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
    @repeated_phrase = params[:number].to_i.times do {params[:phrase]}
    "#{@repeated_phrase}"
  end

end
