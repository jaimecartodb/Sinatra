require_relative '/Users/jaimedemora/Ironhack/Week5/Sinatra/task.rb'
require_relative './spec_helper'
require 'date'

describe "The Class list" do 
  it "puts as true the Completed attribute" do
    expect(Task.new("Buy Milk").completed!).to eq(true)
  end
  it "We check the correct time" do
    expect(Task.new("Buy Milk").completed!).to eq(Time.now)
  end
end