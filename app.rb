require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i
    "#{@square.to_i**2}"
  end

  get '/say/:number/:phrase' do
    string = ""
    params[:number].to_i.times do
     string += params[:phrase]
   end
   string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    operation = params[:operation]

    if operation == "add"
      number = number1 + number2
      "#{number}"
    elsif operation == "subtract"
      number = number1 - number2
      "#{number}"
    elsif operation == "multiply"
      number = number1 * number2
      "#{number}"
    elsif operation == "divide"
      number = number1 / number2
      "#{number}"
    end
  end

end
