/*to be done: 
 * line 120
 * scores files <-- linked blocks eliminate this
 * make window draw iteration before game starts
 * improve crash GUI
 * have a restart button?
 * optimise drawing blocks <-- make linked list
 * gamePausedText not showing
 * */
//have cool high contrast level3  DONE!
//work on balloon mechanics DONE!
//DONE: work on menus level selector GUI DONE!
#include <iostream>
#include <fstream>
#include <SFML/Graphics.hpp>
#include <SFML/Audio.hpp>
#include <sstream>
#include <string>
#include <string.h>
using namespace std;

//float to string converter
template <typename T>
string to_string(T value)
{
    ostringstream oss;
    oss << value;
    return oss.str();
}

const int numberOfLevels = 3;
int powerupCount;
int blockCount;
float gravity = 400.f;

bool crashed = false;
bool levelComplete = false;
int distanceCovered;
int speedValue = 25;

int levelNum;
string level = "data/level";
string levelNumber = "0";
string backgroundFile = "background" + levelNumber + ".jpg";

struct rectangleData
{
	int height;
	int width;
	int posY;
	int posX;
};

struct rectangleColumn
{
	rectangleData top;
	rectangleData bottom; 
};

struct powerupData
{
	int radius;
	int posY;
	int posX;
	int type;
};

void pushNodes(rectangleColumn);

class blocks
{
	private:
	public:
		blocks *next;
		rectangleColumn value;
		static int offset;
		blocks()
		{
		}
		struct shape
		{
			sf::RectangleShape shapeTop;
			sf::RectangleShape shapeBottom;
		};
		shape drawThis;			
		static void getBlockCount()
		{
			string file = level + levelNumber + ".data";
			ifstream input(file.c_str());
			input >> blockCount;
		}
		static void fileRead(blocks *blockList) //change
		{
			int i;
			rectangleColumn temp;
			string file = level + levelNumber + ".map";
			ifstream input(file.c_str());
			
			for(i = 0; i < blockCount; i++)
			{
				input.read((char*)&temp, sizeof(temp));
				pushNodes(temp);
			}
			input.close();
		}
		void setValues(int x)
		{
			//might change this to class member
			//drawThis.shapeTop.setTexture(&blockTexture);
			//drawThis.shapeBottom.setTexture(&blockTexture);
			//check vector 2f
			if(levelNumber == "0" || levelNumber == "1") //set for block colors
			{
				drawThis.shapeTop.setFillColor(sf::Color(128, 0, 255));
				drawThis.shapeBottom.setFillColor(sf::Color(128, 0, 255));
				drawThis.shapeTop.setOutlineColor(sf::Color::Black);
				drawThis.shapeBottom.setOutlineColor(sf::Color::Black);
			}
			if(levelNumber == "2")
			{
				drawThis.shapeTop.setFillColor(sf::Color(255, 0, 30));
				drawThis.shapeBottom.setFillColor(sf::Color(255, 0, 30));
				drawThis.shapeTop.setOutlineColor(sf::Color::Black);
				drawThis.shapeBottom.setOutlineColor(sf::Color::Black);
			}
			if(levelNumber == "3")
			{
				drawThis.shapeTop.setFillColor(sf::Color(0, 0, 0));
				drawThis.shapeBottom.setFillColor(sf::Color(0, 0, 0));
				drawThis.shapeTop.setOutlineColor(sf::Color(30, 30, 30)); //might need to change this
				drawThis.shapeBottom.setOutlineColor(sf::Color(30, 30, 30));
			}
			drawThis.shapeTop.setOutlineThickness(-7.5);
			drawThis.shapeBottom.setOutlineThickness(-7.5);
			value.top.posX = x;
			value.bottom.posX = x;
			drawThis.shapeTop.setSize(sf::Vector2f(value.top.width, value.top.height));
			drawThis.shapeBottom.setSize(sf::Vector2f(value.bottom.width, value.bottom.height));
			drawThis.shapeTop.setPosition(value.top.posX, value.top.posY);
			drawThis.shapeBottom.setPosition(value.bottom.posX, value.bottom.posY);
		}
		static void moveBlocks(blocks *blockList) //change
		{
			offset -= speedValue;
			for(int i = 0; i < blockCount; i++)
			{
				blockList[i].setValues(i * blockList[i].value.top.width + offset);
			}
			distanceCovered += speedValue;
		}
		static void drawBlocks(blocks *blockList, sf::RenderWindow &window) //change
		{
			static int keepBlockCount = 0;
			int i;
			for(i = 0; i < blockCount; i++)
			{
				window.draw(blockList[i].drawThis.shapeTop);
				window.draw(blockList[i].drawThis.shapeBottom);
			}
		}
};

int blocks::offset = 0;

blocks *node, *initial;

void pushNodes(rectangleColumn transferValue)
{
	blocks *element = new blocks;
	element -> value = transferValue;
	element -> next = node;
	node = element;
}

class powerups
{
	private:
	public:
		int type;
		sf::Texture design;
		powerupData value;
		sf::CircleShape body;
		powerups()
		{
		}
		static void fileReadPowerups(powerups *powerupsList)
		{
			string file = level + levelNumber + ".pow";
			ifstream input(file.c_str(), ios::binary);
			int i;
			for(i = 0; i < powerupCount; i++)
			{
                input.read((char*)&powerupsList[i].value, sizeof(powerupsList[i].value));
			}
			input.close();
		}
		void setValues()
		{
			body.setRadius(value.radius);
			body.setPosition(value.posX, value.posY);
			/*
			sf::Texture *texturePointer = &design;
			if(type == 0)
			{
				design.loadFromFile("Rocket.png");
			}
			else if(type == 1)
			{	
				design.loadFromFile("powerupTexture1.png");
			}
			else if(type == 2)
			{	
				design.loadFromFile("powerupTexture2.png");
			}
			body.setTexture(texturePointer, false);
			*/
			body.setFillColor(sf::Color::Blue);
		}
		void drawPowerup(sf::RenderWindow &window)
		{
			window.draw(body);
		}
		static void getPowerupCount()
		{
			string file = level + levelNumber + ".data";
			ifstream input(file.c_str());
            input >> powerupCount;
            input >> powerupCount;
        }
        void movePowerup()
		{
			value.posX -= speedValue;
			body.setPosition(value.posX, value.posY);
		}
};

class fly
{
	private:
		struct posVector
		{
			int x;
			int y;
		};
		struct velocityVector
		{
			float y;
		};
		velocityVector velocity;
		posVector position;
		sf::Texture design;
		int type;		
	public:
		sf::Sprite body;
		fly()
		{
			position.x = 0;
			position.y = 0;
		}
		fly(int a, int b, const char *picture, blocks *blockList, int type)
		{
			position.x = a;
			position.y = (blockList[1].value.top.posY + blockList[1].value.bottom.posY) / 2;
			if(!design.loadFromFile(picture));
			if(type == 0) //for speedVal
			{
				speedValue = 25;
			}
			else if(type == 1)
			{
				speedValue = 15;
			}
			else if(type == 2)
			{
				speedValue = 10;
				gravity = -200.0f;
			}
			body.setTexture(design);
			body.setColor(sf::Color(255, 255, 255, 255));
		}
		void setValues(int a, int b, const char *picture, blocks *blockList, int value)
		{
			position.x = a;
			position.y = (blockList[1].value.top.posY + blockList[1].value.bottom.posY) / 2;
			if(!design.loadFromFile(picture));
			body.setTexture(design);
			type = value;
			if(type == 0) //for speedVal
			{
				speedValue = 25;
			}
			else if(type == 1)
			{
				speedValue = 15;
			}
			else if(type == 2)
			{
				speedValue = 10;
				gravity = -200.0f;
			}
			body.setColor(sf::Color(255, 255, 255, 255));
		}
		void movement(float dt, int flag) //work on balloon mechanincs
		{
			//position.y += 1;
			//position.x += 1 * speedUpX;
			if(type == 0 || type == 1)
			{
				if(flag == 1)
				{
					velocity.y -= 600.f;
				}
				if(velocity.y < gravity)
				{
					velocity.y += 10.f;
				}
				else if(velocity.y > gravity)
				{
					velocity.y = gravity;
				}
			}
			if(type == 2)
			{
				if(flag == 1)
				{
					velocity.y += 500.f;
				}
				if(velocity.y < gravity)
				{
					velocity.y = gravity;
				}
				else if(velocity.y > gravity)
				{
					velocity.y -= 10.f;
				}
			}
			position.y += velocity.y * dt;
			body.setPosition(position.x, position.y);
		}
		void jump(float dt)
		{
			movement(dt, 1);
		}
		void playExplosionAudio() //not working on ubuntu, try on windows?
		{
			sf::SoundBuffer explosionBuffer;
			if(!explosionBuffer.loadFromFile("explosion.wav"));
			sf::Sound explosionSound;

			explosionSound.setBuffer(explosionBuffer);
			explosionSound.setVolume(100);
			explosionSound.play();
		}
		void collisionCheck(blocks *blockList)
		{
			for(int i = 0; i < blockCount; i++)
			{
				if(body.getGlobalBounds().intersects(blockList[i].drawThis.shapeTop.getGlobalBounds()) || body.getGlobalBounds().intersects(blockList[i].drawThis.shapeBottom.getGlobalBounds()))
				{
					//playExplosionAudio(); //does not work yet
					if(!design.loadFromFile("sprites/explosion.png"));
					body.setTexture(design);
					crashed = true;
				}
			}
		}
		void collisionCheck(powerups *powerupsList, bool &doubleScore)
		{
			for(int i = 0; i < powerupCount; i++)
			{
				if(body.getGlobalBounds().intersects(powerupsList[i].body.getGlobalBounds()))
				{
					if(powerupsList[i].type == 0)
					{
						doubleScore = true;
					}
				}
			}
		}
		static int typeNumber(string imageFile)
		{
			if(imageFile == "sprites/airplane.png")
			{
				return 0;
			}
			if(imageFile == "sprites/bird.png")
			{
				return 1;
			}
			if(imageFile == "sprites/balloon.png")
			{
				return 2;
			}
			return -1;
		}
		int flyType()
		{
			return type;
		}	
};

int checkLevelComplete(int distanceCovered, bool &gamePause)
{
	if(distanceCovered >= blockCount * 100)
	{
		levelComplete = true;
		gamePause = true;
		levelNumber = to_string(++levelNum);
		return 1;
	}
	return 0;
}

void gameTitle()
{
	cout << "	       *                  **#" << endl;   
	cout << "	m mm  mmm     mmmm   mmm     #" << endl;  
	cout <<	"	#*  *   #    #* *#  #*  #    #" << endl;   
	cout << "	#       #    #   #  #****    #" << endl;   
	cout << "	#     mm#mm  *#m*#  *#mm*    *mm" << endl;
	cout << "		      m  #               " << endl;
	cout << "		       **        			" << endl;
	cout << "\nRIGEL! A cross platform platformer\n";
}

int menu(bool &menuCheck, string &imageFile)
{
	int choice;
	char option;
	cout << "\nSelect option:\n\n";
	cout << "1 - PLAY!\n";
	cout << "2 - Choose aircraft\n";
	cout << "3 - Scores\n";
	cout << "4 - Exit\n";
	cin >> choice;
	switch(choice)
	{
		case 1:
			menuCheck = true;
			break;
		case 2:
			cout << "a - Airplane (default)\n";
			cout << "b - Twitter Bird\n";
			cout << "c - Helium Balloon\n";
			cin >> option;
			switch(option)
			{
				case 'a':
					imageFile = "sprites/airplane";
					break;
				case 'b':
					imageFile = "sprites/bird";
					break;
				case 'c':
					imageFile = "sprites/balloon";
					break;
			}
			break;
		case 3:
		case 4:
			return 1;
	}
	return 0;
}	

int main()
{
	int score;
	sf::Clock frametime;
	sf::Texture img;
	sf::Sprite background;
	
	string scoreString;
	string image;
	
	bool gamePause = true;
	bool doubleScore = false;
	bool inPlay = true;
	bool menuCheck = false;
	
	int doubleScoreCount = 0;
	int i;
	score = 0;
	gamePause = true;
	doubleScore = false;
	doubleScoreCount = 0;
	
	sf::Event event;
	sf::Font guiFont;
	sf::Text scoreText, scoreValue;
	sf::Text levelCompleteText;	
	sf::Text crashedText;
	sf::Text doubleScoreText;
	sf::Text multiplier;
	sf::Text multiplierValue;
	sf::Text gamePausedText;
	sf::Color fontColor = sf::Color::White;
	fly flyBody;
	string imageFile = "sprites/airplane";
	gameTitle();
	while(menuCheck == false)
	{
		if(menu(menuCheck, imageFile) == 1)
		{
			return 0;
		}
	}
	imageFile += ".png";
	//(190, 300, "airplane.png", blockList);
	//no more variable declarations after this line
	sf::RenderWindow window(sf::VideoMode(1280, 720), "betaRigel");
	window.setFramerateLimit(60);
	while(inPlay == true)
	{
		initial = node;
		if(levelNumber == "3")
		{
			fontColor = sf::Color::Black;
		}
		backgroundFile = "data/background" + levelNumber + ".jpg";
		if(!img.loadFromFile(backgroundFile));

		background.setTexture(img);
		
		blocks::getBlockCount();
		blocks::fileRead(blockList);
		blocks::moveBlocks(blockList);
		
		flyBody.setValues(190, 300, imageFile.c_str(), blockList, fly::typeNumber(imageFile));
		guiFont.loadFromFile("font.ttf");
		
		scoreText.setFont(guiFont);
		scoreText.setCharacterSize(40);
		scoreText.setColor(fontColor);
		scoreText.setString("SCORE: ");
		scoreText.setPosition(0, 600);
		scoreValue.setFont(guiFont);
		scoreValue.setCharacterSize(40);
		scoreValue.setColor(fontColor);
		scoreValue.setPosition(150, 600);

		levelCompleteText.setFont(guiFont);
		levelCompleteText.setCharacterSize(70);
		levelCompleteText.setColor(sf::Color::White);
		levelCompleteText.setString("LEVEL COMPLETE!");
		levelCompleteText.setPosition(300, 200);
		
		crashedText.setFont(guiFont);
		crashedText.setCharacterSize(70);
		crashedText.setColor(sf::Color::Red);
		crashedText.setString("CRASHED!");
		crashedText.setPosition(300, 200);
		
		doubleScoreText.setFont(guiFont);
		doubleScoreText.setCharacterSize(40);
		doubleScoreText.setColor(sf::Color::Red);
		doubleScoreText.setString("DOUBLE SCORE!");
		doubleScoreText.setPosition(450, 600);
		
		multiplier.setFont(guiFont);
		multiplier.setCharacterSize(40);
		multiplier.setColor(sf::Color::White);
		multiplier.setString("MULTIPLIER: ");
		multiplier.setPosition(0, 550);
		
		multiplierValue.setFont(guiFont);
		multiplierValue.setCharacterSize(40);
		multiplierValue.setColor(sf::Color::White);
		multiplierValue.setString(to_string(speedValue / 10.0));
		multiplierValue.setPosition(270, 550);
		
		gamePausedText.setFont(guiFont); 
		gamePausedText.setCharacterSize(30);
		gamePausedText.setColor(sf::Color::White);
		gamePausedText.setString("GAME PAUSED");
		gamePausedText.setPosition(270, 400);
		
		
		powerups::getPowerupCount();
		powerups powerupsList[powerupCount];
		powerups::fileReadPowerups(powerupsList);
		
		for(i = 0; i < powerupCount; i++)
		{
			powerupsList[i].setValues();
		}
			
		while (window.isOpen())
		{
			float dt = frametime.restart().asSeconds();
			while(window.pollEvent(event))
			{
				if(event.type == sf::Event::Closed)
				{
					window.close();
				}
				if(event.type == sf::Event::KeyPressed)
				{
					if(event.key.code == sf::Keyboard::Space && crashed == false)
					{
						flyBody.jump(dt);
					}
					if(event.key.code == sf::Keyboard::P && gamePause == false && crashed == false)
					{
						window.draw(gamePausedText);
						gamePause = true;
					}
					else
					{
						gamePause = false;
					}
				}
				if(event.type == sf::Event::KeyPressed && crashed == true)
				{
					return 0;
				}
			}
			if(crashed == true)
			{
				scoreString = to_string(score);
				scoreValue.setString(scoreString);
				window.draw(crashedText);
				window.draw(scoreText);
				window.draw(scoreValue);
				window.display();
				gamePause = true;
			}
			if(checkLevelComplete(distanceCovered, gamePause) == 1)
			{
				if(flyBody.flyType() == 2)
				{
					score -= 5;
					score *= 4;
				}
				score *= speedValue / 10;
				scoreString = to_string(score);
				scoreValue.setString(scoreString);
				window.clear(sf::Color::Black);
				window.draw(levelCompleteText);
				window.draw(multiplier);
				window.draw(multiplierValue);
				window.draw(scoreText);
				window.draw(scoreValue);
				window.display();
				break;
			}
					
			if(gamePause == false)
			{
				flyBody.movement(dt, 0);
				window.clear(sf::Color::Black);
				
				flyBody.collisionCheck(blockList);
				flyBody.collisionCheck(powerupsList, doubleScore);
				
				window.draw(background);
				
				for(i = 0; i < powerupCount; i++)
				{
					powerupsList[i].movePowerup();
					powerupsList[i].drawPowerup(window);
				}
				if(crashed == false)
				{
					blocks::moveBlocks(blockList);
				}
				
				blocks::drawBlocks(blockList, window);
				window.draw(flyBody.body);
				
				if(doubleScore == true && doubleScoreCount < 30)
				{
					score += speedValue * 2;
					doubleScoreCount++;
					window.draw(doubleScoreText);
				}
				else if(doubleScoreCount == 30)
				{
					score += speedValue;
					doubleScore = false;
					doubleScoreCount = 0;
				}
				else
				{
					doubleScore = false;
					score += speedValue;
				}
				
				scoreString = to_string(score);
				scoreValue.setString(scoreString);
				
				window.draw(scoreText);
				window.draw(scoreValue);
				window.display();
			}
		}
		if(levelNum > numberOfLevels)
		{
			return 0;
		}
		//reinitialise variables for next level
		distanceCovered = 0;
		blocks::offset = 0;
	}
	return 0;
}
