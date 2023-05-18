#include "linked.h"


int main(void)
{
	node_t *head, *ln;

	add_node_end(&head, 1);
	add_node_end(&head, 2);
	add_node_end(&head, 3);
	add_node_end(&head, 4);
	ln = add_node_end(&head, 5);
	print_list(head);
	printf("the head node value is %d\n", head->n);
	reverse_list(&head);
	print_list(head);
	printf("the head node value is %d\n", head->n);
	print_list(ln);
	return (0);
}
