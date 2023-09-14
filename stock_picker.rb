def stock_picker(prices)
    original_hash = {}
    prices.each_with_index do |buy_price, buy_day|
        new_array = prices.slice(buy_day, (prices.size + 1))
        new_array.each_with_index do |sell_price, sell_day|
            original_hash[[buy_day, (sell_day + buy_day)]] = sell_price - buy_price
        end
    end
    result = original_hash.max_by { |price, day| day }[0]
    result
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
