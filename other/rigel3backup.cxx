//work on menus and inPlay bool
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

int powerupCount;
int blockCount;
const float gravity = 400.f;
sf::RenderWindow window(sf::VideoMode(1280, 720), "alphaRigel");
bool crashed = false;
bool levelComplete = false;
int distanceCovered;
int speedValue = 2;

string level = "level";
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

class blocks
{
	private:
	public:
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
		static void fileRead(blocks *blockList)
		{
			int i;
			string file = level + levelNumber + ".map";
			ifstream input(file.c_str());
			for(i = 0; i < blockCount; i++)
			{
				input.read((char*)&blockList[i].value, sizeof(blockList[i].value));
			}
			input.close();
		}
		void setValues(int x)
		{
			//might change this to class member
			//drawThis.shapeTop.setTexture(&blockTexture);
			//drawThis.shapeBottom.setTexture(&blockTexture);
			//check vector 2f
			if(levelNumber == "0" || levelNumber == "1")
			{
				drawThis.shapeTop.setFillColor(sf::Color(128, 0, 255));
				drawThis.shapeBottom.setFillColor(sf::Color(128, 0, 255));
			}
			if(levelNumber == "2")
			{
				drawThis.shapeTop.setFillColor(sf::Color(255, 0, 30));
				drawThis.shapeBottom.setFillColor(sf::Color(255, 0, 30));
			}
			drawThis.shapeTop.setOutlineColor(sf::Color::Black);
			drawThis.shapeTop.setOutlineThickness(-7.5);
			drawThis.shapeBottom.setOutlineColor(sf::Color::Black);
			drawThis.shapeBottom.setOutlineThickness(-7.5);
			value.top.posX = x;
			value.bottom.posX = x;
			drawThis.shapeTop.setSize(sf::Vector2f(value.top.width, value.top.height));
			drawThis.shapeBottom.setSize(sf::Vector2f(value.bottom.width, value.bottom.height));
			drawThis.shapeTop.setPosition(value.top.posX, value.top.posY);
			drawThis.shapeBottom.setPosition(value.bottom.posX, value.bottom.posY);
		}
		static void moveBlocks(blocks *blockList)
		{
			offset -= speedValue;
			for(int i = 0; i < blockCount; i++)
			{
				blockList[i].setValues(i * blockList[i].value.top.width + offset);
			}
			distanceCovered += speedValue;
		}
		static void drawBlocks(blocks *blockList)
		{
			int i;
			for(i = 0; i < blockCount; i++)
			{
				window.draw(blockList[i].drawThis.shapeTop);
				window.draw(blockList[i].drawThis.shapeBottom);
			}
		}
		static void getBlockCount()
		{
			string file = level + levelNumber + ".data";
			ifstream input(file.c_str());
			input >> blockCount;
		}
};
int blocks::offset = 0;

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
		void drawPowerup()
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
	public:
		sf::Sprite body;
		fly()
		{
			position.x = 0;
			position.y = 0;
		}
		fly(int a, int b, const char *picture, blocks *blockList)
		{
			position.x = a;
			position.y = (blockList[1].value.top.posY + blockList[1].value.bottom.posY) / 2;
			if(!design.loadFromFile(picture));
			body.setTexture(design);
			body.setColor(sf::Color(255, 255, 255, 255));
		}
		void movement(float dt, int flag)
		{
			//position.y += 1;
			//position.x += 1 * speedUpX;
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
					if(!design.loadFromFile("explosion.png"));
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
};

int checkLevelComplete(int distanceCovered, bool &gamePause)
{
	if(distanceCovered == blockCount * 100)
	{
		levelComplete = true;
		gamePause = true;
		return 1;
	}
	return 0;
}

int main()
{
	int score = 0;
	window.setFramerateLimit(60);
	sf::Clock frametime;
	cout << "Level Number?";
	cin >> levelNumber;
	
	sf::Texture img;
	sf::Sprite background;
	
	string scoreString;
	
	bool gamePause = true;
	bool doubleScore = false;
	int doubleScoreCount = 0;
	
	sf::Font guiFont;
	sf::Text scoreText, scoreValue;
	sf::Text levelCompleteText;	
	sf::Text crashedText;
	sf::Text doubleScoreText;
	
	backgroundFile = "background" + levelNumber + ".jpg";
	if(!img.loadFromFile(backgroundFile));

	background.setTexture(img);
	
	blocks::getBlockCount();
	blocks blockList[blockCount];
	blocks::fileRead(blockList);
	blocks::moveBlocks(blockList);
	int i;
	
	sf::Event event;
	bool inPlay = true;
	
	fly flyBody(190, 300, "airplane.png", blockList);
	
	guiFont.loadFromFile("font.ttf");
	
	scoreText.setFont(guiFont);
	scoreText.setCharacterSize(40);
	scoreText.setColor(sf::Color::White);
	scoreText.setString("SCORE: ");
	scoreText.setPosition(0, 600);
	scoreValue.setFont(guiFont);
	scoreValue.setCharacterSize(40);
	scoreValue.setColor(sf::Color::White);
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
	crashedText.setPosition(30, 200);
	
	doubleScoreText.setFont(guiFont);
	doubleScoreText.setCharacterSize(40);
	doubleScoreText.setColor(sf::Color::Red);
	doubleScoreText.setString("DOUBLE SCORE!");
	doubleScoreText.setPosition(450, 600);
	
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
					gamePause = true;
				}
				else
				{
					gamePause = false;
				}
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
			scoreString = to_string(score);
			scoreValue.setString(scoreString);
			window.clear(sf::Color::Black);
			window.draw(levelCompleteText);
			window.draw(scoreText);
			window.draw(scoreValue);
			window.display();
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
				powerupsList[i].drawPowerup();
			}
			if(crashed == false)
			{
				blocks::moveBlocks(blockList);
			}
			
			blocks::drawBlocks(blockList);
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
	return 0;
}
