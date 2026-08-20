# frozen_string_literal: true

# project 3

stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stocks)
  max = 0
  buy_and_sell = []
  n = stocks.length
  stocks.each_with_index do |price, i|
    ((i + 1)...n).each do |j|
      if stocks[j] - price > max
        max = stocks[j] - price
        buy_and_sell = [i, j]
      end
    end
  end
  p buy_and_sell
end

stock_picker(stocks)
