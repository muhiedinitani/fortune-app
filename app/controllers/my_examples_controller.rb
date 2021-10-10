class MyExamplesController < ApplicationController
  def fortunes
    fortunes = ["You will be rich!", "You will be famous!", "You will be a bee!"]
    return fortunes.sample
  end
  
  def lotto_predictor
    numbers = []
    i = 0
    61.times do
      numbers << i
      i += 1
    end
    return numbers.sample(6)
  end

  def all_actions   
    # render json: {message: "aklsdfjlkasdfjkasd"}
    render json: {fortune: "#{fortunes}", lotto: "#{lotto_predictor}"}
  end
end