require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name} reversed is: #{@user_name.reverse}."
  end

  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end

  get '/say/:number/:phrase' do

    # @n = params[:number].to_i
    # @p = params[:phrase]

    @p = params[:phrase].size


    "#{@p}"

    # @n.times {puts params[:phrase]}

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # @words = []

    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @outcome = 0
    if params[:operation] == "add"
      @outcome = (params[:number1].to_i + params[:number2].to_i)
    elsif params[:operation] == "subtract"
      @outcome = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "divide"
      @outcome = params[:number1].to_i / params[:number2].to_i
    elsif params[:operation] == "multiply"
      @outcome = params[:number1].to_i * params[:number2].to_i
    end
    "#{@outcome}"
  end
end
