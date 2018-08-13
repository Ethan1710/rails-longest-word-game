class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
    @letters << ('A'..'Z').to_a.sample
    end
    @letters
  end

  def score
    @guess = params[:question].upcase.chars
    @letters = params[:letters].split(" ")
    @guess.each do |letter|
      if @guess.count(letter) <= @letters.count(letter)
        @result = "OK"
      else
        @result = "KO'"
      end
    end
  end
end
