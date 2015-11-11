require_relative '/Users/jaimedemora/Ironhack/Week5/Sinatra/lib/task.rb'
require_relative '/Users/jaimedemora/Ironhack/Week5/Sinatra/lib/todo.rb'
require_relative './spec_helper'
require 'date'

describe "The Task Class" do 
	it "puts as true the Completed attribute" do
	  expect(Task.new("Buy Milk").completed!).to eq(true)
	end
	it "We check the correct time" do
	  expect(Task.new("Buy Milk").created_at).to eq(Time.now)
	end
	it "Updates the content correctly" do
	  expect(Task.new("Buy Milk").update_content!("Walk the dog")).to eq("Walk the dog")
	    ##how can I select here the content attribute??
	end
end

describe "The TodoList Class" do
	it "Adds a new todo to the list" do
	@list = TodoList.new("John")
	@task = Task.new("Buy Milk")
	expect(@list.add_task(Task.new("Buy Milk").tasks.content).to eq("Buy Milk"))
	end

	it "adds a user when it creates a todo" do
		@list = TodoList.new("John")
		expect(@list.user).to eq("John")
	end

	it "saves the tasks correctly into a file"
	todo_list = TodoList.new("Josh")
	task = Task.new("Walk the dog")
	task2 = Task.new("Buy the milk")
	task3 = Task.new("Make my todo list into a web app")
	todo_list.save
	@expect
	##how do I do this????
end
