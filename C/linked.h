#ifndef LINKED_H
#define LINKED_H

/* standard lib headers */
#include <stdio.h>
#include <stdlib.h>

/* structure defination */
typedef struct Node {
	int n;
	struct Node *next;
} node_t;

/* my function prototypes */
node_t *add_node_end(node_t **, int);
void print_list(node_t *head);
node_t *reverse_list(node_t **head);

#endif /* LINKED_H */
