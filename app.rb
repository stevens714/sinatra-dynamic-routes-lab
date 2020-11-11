require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    "#{params[:name].reverse}"
  end


  get "/square/:number" do
    "#{params[:number].to_i*params[:number].to_i}"
  end

  get "/say/:number/:phrase" do 
    @result = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do
      @result += @phrase
      @result += "\n"
    end
    "#{@result}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @a = params[:word1]
    @b = params[:word2]
    @c = params[:word3]
    @d = params[:word4]
    @e = params[:word5]
    "#{@a} #{@b} #{@c} #{@d} #{@e}."
  end

  get "/:operation/:number1/:number2" do
    @number_1 = params[:number1].to_i
    @number_2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{@number_1+@number_2}"
    elsif params[:operation] == "subtract"
      "#{@number_1-@number_2}"
    elsif params[:operation] == "multiply"
      "#{@number_1*@number_2}"
    elsif params[:operation] == "divide"
      "#{@number_1/@number_2}"
    end
  end

end


