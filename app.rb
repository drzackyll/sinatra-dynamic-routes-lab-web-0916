require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    array = []
    num = params[:number].to_i.times do
      array << params[:phrase]
    end
      "#{array.join("\n")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    x = [params[:number1].to_i, params[:number2].to_i]
    if params[:operation] == "add"
      "#{x.reduce(:+).to_s}"
    elsif params[:operation] == "subtract"
      "#{x.reduce(:-).to_s}"
    elsif params[:operation] == "divide"
      "#{x.reduce(:/).to_s}"
    elsif params[:operation] == "multiply"
      "#{x.reduce(:*).to_s}"
    end
  end
end
