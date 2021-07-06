require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    # binding.pry
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    number = params[:number]
    result = number.to_i * number.to_i
    result.to_s
  end

  get '/say/:number/:phrase' do
    number = params[:number]
    phrase = params[:phrase]
    # binding.pry
    "#{phrase * number.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word_one = params[:word1]
    word_two = params[:word2]
    word_three = params[:word3]
    word_four = params[:word4]
    word_five = params[:word5]
    "#{word_one} #{word_two} #{word_three} #{word_four} #{word_five}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number_one = params[:number1]
    number_two = params[:number2]
    # binding.pry
    if operation == "add"
      result = number_one.to_i + number_two.to_i
    elsif operation == "subtract"
      result = number_one.to_i - number_two.to_i
    elsif operation == "multiply"
      result = number_one.to_i * number_two.to_i
    elsif operation == "divide"
      result = number_one.to_i / number_two.to_i
    end
    result.to_s
  end
end