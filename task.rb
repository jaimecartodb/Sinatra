require 'date'

class Task
	attr_reader :content, :id, :complete, :created_at
	@@current_id = 1
	def initialize(content)
		@content = content
		@id = @@current_id
		@@current_id += 1
		@complete = false
		@created_at = Date.today
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