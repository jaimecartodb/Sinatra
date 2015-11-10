require 'date'
require '/Users/jaimedemora/Ironhack/Week5/Sinatra/todo.rb'
require 'pry'

class Task
	attr_reader :content, :id, :complete, :created_at
	@@current_id = 1
	def initialize(content)
		@content = content
		@id = @@current_id
		@@current_id += 1
		@complete = false
		@created_at = Time.now
		@updated_at = nil
	end

	def complete?
		return @complete
	end

	def completed!
		@complete = true
	end

	def make_incomplete!
		@complete = false
	end

	def update_content!
		@content = content
		@uptdate_at = Time.now
	end


end

task = Task.new("Buy the milk")
puts task.complete
puts task.complete?
task.completed!
puts task.completed!
puts task.created_at

# 1
task2 = Task.new("Wash the car")
puts task2.id
task3 = Task.new("Buy shoes")
task4 = Task.new("Buy mermelade")


todol = TodoList.new("Josh")
todol.add_task(task)
todol.add_task(task2)
todol.add_task(task3)
todol.add_task(task4)
puts todol.tasks[0].content
todol.delete_task(0)
puts todol.tasks[0].content
##how come if it's deleted it still prints its value??
puts todol.tasks[1].content
todol.find_task_by_id(3)

puts todol.sort_by_created

