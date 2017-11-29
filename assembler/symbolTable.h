typedef struct node
{
	char symbol[10];
	int address;
	struct node *next;
} node;

int contains(node* head, char*sym);
node* addEntry(node* head, char* sym, int add);
int getAddress(node* head, char*sym);
