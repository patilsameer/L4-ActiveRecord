# L4-ActiveRecord
to execute this code setup environment 
install ruby 
install postgress database
create user postgres with password as master
create database saas_db
create table todos


connect_db.rb --    file is used for connection to postgres.

list_todos.rb --    file have the code to list all the todos in database table.

create_todos_table.rb -- file is providing interface to represent todo table in psql database in ruby environment.

complete_todo.rb    --    file is used to select task to be marked as complete, the row id is used for this purpose. it call the method of todos.rb file

add_todo.rb   --   file reads new todo task details- text and date and calls method in todo.rb file.
