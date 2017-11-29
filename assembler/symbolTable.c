#include <stdio.h>										
#include <stdlib.h>	
#include <string.h>									
#include "symbolTable.h"

int contains(node* head, char*sym)
{
	int found = 0;
	while(head != NULL)
	{
		if(strcmp(head -> symbol, sym) == 0)
		{
			found = 1;
			break;
		}
		head = head -> next;
	}
	return found;
}

node* addEntry(node* head, char* sym, int add)
{
	if(contains(head, sym) == 0)
	{
		node* newNode = (node*)malloc(sizeof(node));
		strcpy(newNode -> symbol, sym);
		newNode -> address = add;
		newNode -> next = head;
		return newNode;
	}
	else
		return head;
}

int getAddress(node* head, char*sym)
{
	if(contains(head, sym) == 0)
		return -1;
	else
	{
		while(head != NULL)
		{
			if(strcmp(head -> symbol, sym) == 0)
				return head -> address;

			head = head -> next;
		}	
	}
}




