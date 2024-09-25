def stock_picker(prices)
    profit = 0
    days = [0,0]

     prices.each_with_index do |buy_price, buy_day|
     prices.each_with_index do |sell_price, sell_day|
        difference = sell_price - buy_price
        if difference > profit && buy_day < sell_day
            profit = difference
            days = [buy_day, sell_day]
        end
    end
end
days
end

result = stock_picker([17,3,6,9,15,8,6,1,10])
p result
