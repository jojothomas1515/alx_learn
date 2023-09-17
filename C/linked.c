#include "linked.h"

node_t *add_node_end(node_t **head, int n)
{
	node_t *result;
	node_t *nodes = (*head);

	if (head == NULL)
		return (NULL);

	result = malloc(sizeof(node_t));
	result->n = n;
	result->next = NULL;

	if ((*head) == NULL)
	{
		*head = result;
		return (result);
	}

	while (nodes->next)
		nodes = nodes->next;
	nodes->next = result;
	return (result);
}


void print_list(node_t *head)
{
	node_t *curr = head;
	if (head == NULL)
		return;
	while (curr)
	{
		printf("%d", curr->n);
		if (curr->next)
			printf("->");
		curr = curr->next;
	}
	printf("\n");
}

node_t *reverse_list(node_t **head)
{
	node_t *curr = *head, *prev = NULL, *next = NULL;

	if (head == NULL || *head == NULL)
		return (NULL);

	while (curr)
	{

		next = curr->next;
		curr->next = prev;
		prev = curr;
		curr = next;
	}
	*head = prev;
	return (prev);
}
