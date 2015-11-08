require_relative "/Users/jaimedemora/Ironhack/Week5/Sinatra/task.rb"
require "spec_helper"

describe "The Class list" do 
  it "puts as true the Completed attribute" do
    expect(Task.new("Buy Milk").completed!)).to eq(true)
  end
end