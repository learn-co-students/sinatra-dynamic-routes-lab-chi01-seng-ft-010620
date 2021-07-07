require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get "/square/:number" do 
    @num = params[:number].to_i
    (@num ** 2).to_s
  end 

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @p = params[:phrase]
    "#{@p * @num}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    word_one = params[:word1]
    word_two = params[:word2]
    word_three = params[:word3]
    word_four = params[:word4]
    word_five = params[:word5]
    "#{word_one} #{word_two} #{word_three} #{word_four} #{word_five}."
  end
  
  get "/:operation/:number1/:number2" do 
    op = params[:operation]
    num_one = params[:number1].to_i
    num_two = params[:number2].to_i
    if op == 'add'
      (num_one + num_two).to_s
    elsif op == 'subtract'
      (num_one - num_two).to_s
    elsif op == 'multiply'
      (num_one * num_two).to_s
    elsif op == 'divide'
      (num_one / num_two).to_s
    end 
  end 
end