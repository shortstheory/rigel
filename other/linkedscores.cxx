#include <iostream>
#include <fstream>
using namespace std;

struct node
{
	int value;
	node *next;
}*top, *temp, *save;

class scoresList //need to finish this to shipping
{
	private:
	public:	
		void writeScores(int score)
		{
			ofstream output("scores.txt", ios::binary|ios::app);
			output.seekp(0, ios::end);
			output << score << endl;
			output.close();
		}
		void getNodes()
		{
			ifstream input("scores.txt");
			int x;
			while(input.eof() == 0)
			{
				input >> x;
				insertNode(createNode(x));
			}
		}
		node *createNode(int x)
		{
			temp = new node;
			temp -> value = x;
			temp -> next = NULL;
			return temp;
		}
		void insertNode(node *newNode)
		{
			if(top == NULL)
			{
				top = newNode;
			}
			else
			{
				save = top;
				top = newNode;
				newNode -> next = save;
			}
		}
		void displayAllNodes(node *newNode)
		{
			int i = 0;
			while(newNode != NULL && i <= 10)
			{
				cout << newNode -> value << endl;
				newNode = newNode -> next;
				i++;
			}
		}
};

int main()
{
	scoresList test;
	//test.getNodes();

	test.writeScores(53);
	test.getNodes();
	
	test.displayAllNodes(top);
	return 0;
}
