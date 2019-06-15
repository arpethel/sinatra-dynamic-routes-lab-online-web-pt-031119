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

  # get '/say/:number' do
  #   # @phrase = params[:phrase]
  #   @n = params[:number]
  #   # "#{@n}".times {puts @phrase}
  #   # @yes = @n.times {puts :phrase}
  #   @n = @n.to_i
  #   @n.times {puts "hello"}
  #   # "#{@phrases}"
  #
  #   # "#{@number} #{@phrase}"
  #
  # end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # @words = []

    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}"
  end

  get '/:operation/:number1/:number2' do
    @outcome = ""
    if params[:operation] == "+"
      @outcome = params[:number1] + params[:number2]
    elsif params[:operation] == "-"
      @outcome = params[:number1] - params[:number2]
    elsif params[:operation] == "/"
      @outcome = params[:number1] / params[:number2]
    elsif params[:operation] == "*"
      @outcome = params[:number1] * params[:number2]
    end
    "#{@outcome}"
  end
end
