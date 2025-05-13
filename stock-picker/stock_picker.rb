# frozen_string_literal: true

# takes an array of stock prices, one for each day
# returns pair of days representing the best day to buy and the best day to sell
def stock_picker(stock)
  profit = stock[1] - stock[0]
  best_days = [0, 1]

  for i in (0..(stock.length - 1)) do
    for j in ((i + 1)..(stock.length - 1)) do
      new_profit = stock[j] - stock[i]

      if new_profit > profit
        profit = new_profit
        best_days = [i, j]
      end
    end
  end

  best_days
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts 'Stock prices:'
puts prices.to_s
puts ''

best_days = stock_picker(prices)
buy_price = prices[best_days[0]]
sell_price = prices[best_days[1]]
puts "Best day to buy: #{best_days[0]} (#{buy_price}$)"
puts "Best day to sell: #{best_days[1]} (#{sell_price}$)"
puts "Profit: #{sell_price}$ - #{buy_price}$ = #{sell_price - buy_price}$"
