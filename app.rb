require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "Hello, #{@name.reverse}."
  end

  get '/square/:number' do
    # @number = params[:number]
    # "#{@number.to_i ** 2}"

    @number = params[:number].to_i
    (@number ** 2).to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_one = params[:word1]
    @word_two = params[:word2]
    @word_three = params[:word3]
    @word_four = params[:word4]
    @word_five = params[:word5]
    "#{@word_one} #{@word_two} #{@word_three} #{@word_four} #{@word_five}."

    # answer = []
    # params.each do |k,v|
    #   answer << v
    # end
    # answer.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do

    @number_one = params[:number1].to_i
    @number_two = params[:number2].to_i

    case params[:operation]
    when 'add'
      answer = (@number_one + @number_two).to_s
    when 'subtract'
      answer = (@number_one - @number_two).to_s
    when 'multiply'
      answer = (@number_one * @number_two).to_s
    when 'divide'
      answer = (@number_one / @number_two).to_s
    end
  end

end
