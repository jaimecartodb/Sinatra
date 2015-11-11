##why does this make a call to 
require 'YAML'

class TodoList
	attr_reader :tasks, :user
	def initialize(user)
		@user = user
		@tasks = []
##		@todo_store = YAML::Store.new("/Users/jaimedemora/Ironhack/Week5/Sinatra/public.tasks.yml")
		##why do I have issues here??
	end

	def add_task(task)
		@tasks << task
	end

	def delete_task(id)
		@tasks.delete_if {|task| task.id == id}
	end

	def find_task_by_id(id)
		puts @tasks[id].content
	end

	def sort_by_created
		sorted_tasks = @tasks.sort {|task1, task2| task1.created_at <=> task2.created_at}
		return sorted_tasks
	end

	def save 
		@todo_store.transaction do 
			@todo_store[@user] = @tasks
		end
	end

	def load_tasks
		@tasks.each do |item|
			puts item
		end
	end

end
