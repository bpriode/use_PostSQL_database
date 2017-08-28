-- Write the CREATE TABLE statement to make this table.

CREATE TABLE todos (id SERIAL PRIMARY KEY, title VARCHAR(255) NOT NULL, details TEXT  NULL, priority INTEGER NOT NULL DEFAULT 1, created_at TIMESTAMP NOT NULL, completed_at TIMESTAMP NULL);



-- Write INSERT statements to insert five todos into this table, with one of them completed.

INSERT INTO todos (title, priority, created_at) VALUES ('walk dog', 1,'now'), ('clean car', 2, 'now'), ('homework', 2, 'now'), ('mow the yard', 1, 'now');

INSERT INTO todos (title, priority, created_at, completed_at) VALUES ('buy groceries', 2, 'yesterday', 'now');


-- Write a SELECT statement to find all incomplete todos.

SELECT title FROM todos WHERE completed_at IS NULL;
    title
--------------
 walk dog
 clean car
 homework
 mow the yard
(4 rows)

-- Write a SELECT statement to find all todos with a priority above 1.
SELECT title FROM todos WHERE priority != 1;
     title
---------------
 clean car
 buy groceries
 homework
(3 rows)



-- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.

todolist=# UPDATE todos SET details = 'Check tire pressure' WHERE id = 4;




-- Write a DELETE statement to delete all completed todos.
todolist=# DELETE FROM todos WHERE completed_at IS NOT NULL;
