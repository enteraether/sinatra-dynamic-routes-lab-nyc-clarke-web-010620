require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get '/square/:number' do
    @squared = (params[:number].to_i ** 2).to_s
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    # answer = ''
    array = []
    @num = params[:number].to_i
    @num.times  {array << params[:phrase]} 
    answer = array.join
    # binding.pry 
    answer
  end

  # get '/say/:number/:phrase' do
  #   answer = ''

  #   params[:number].to_i.times do
  #     answer += params[:phrase]
  #   end
  #   binding.pry
  #   answer
  # end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
  end

end