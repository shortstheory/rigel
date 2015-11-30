#include <SFML/Graphics.hpp>
#include <fstream>
#include <iostream>
using namespace std;
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

int main()
{
	ifstream input("level0.map", ios::binary);
	rectangleColumn x[100];
	for(int i = 0; i < 100; i++)
	{
		input.read((char*)&x[i], sizeof(x[i]));
		cout << x[i].top.posY << ' ' << x[i].top.width <<  ' ' << x[i].top.height << '\n';
		cout << x[i].bottom.posY << ' ' << x[i].bottom.width << ' ' << x[i].bottom.height << '\n';
	
	}
	return 0;
}
