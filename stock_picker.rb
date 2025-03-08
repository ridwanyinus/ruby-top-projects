def stock_picker(prices)
  max_profit = 0
  best_buy_day = nil
  best_sell_day = nil

  prices.each_with_index do |buy_price, buy_index|
    prices.each_with_index do |sell_price, sell_index|
      next unless sell_index > buy_index

      profit = sell_price - buy_price
      next unless profit > max_profit

      max_profit = profit
      best_buy_day = buy_index
      best_sell_day = sell_index
    end
  end

  puts "Buy on day #{best_buy_day} and sell on day #{best_sell_day + 1} for a profit of $#{max_profit}"
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
