class ExamplesController < ApplicationController
  def fortune_1
    numbers = (1..60).to_a
    lotto = numbers.shuffle
    lotto_numbers = lotto[0], 
    render json: {message: lotto_numbers}
  end
end