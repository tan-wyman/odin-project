#Implement a method #stock_picker that takes in an array of stock prices, one
#for each hypothetical day. It should return a pair of days representing the 
#best day to buy and the best day to sell. Days start at 0. You need to buy 
#before you can sell. Mind the edge cases. 

def stock_picker(stock_prices)
  stock_hash = Hash[stock_prices.map.with_index.to_a]
  
  profit = 0
  buy_on = 0
  sell_on = 0

  stock_hash.each_pair do |buy_price, buy_day|
    stock_hash.each_pair do |sell_price, sell_day|
      if sell_day > buy_day && sell_price - buy_price > profit
        buy_on = buy_day
        sell_on = sell_day
        profit = sell_price - buy_price
      end
    end
  end

  if profit <= 0
    puts "Never buy"
  else
    puts "Buy on day #{buy_on} and sell on day #{sell_on} for $#{profit}"
  end
end



stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
stock_picker([1, 2, 3, 4, 3, 2, 1])
stock_picker(10..1)
stock_picker(0..16)
