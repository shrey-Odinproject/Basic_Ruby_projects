
def stock_picker(prices)
    buy_day=0 
    max_prof=0
    sell_day=0
    prices.each_with_index do |elm,i|# i becomes the day u buy
        if best_pick(prices[i..])[0]>max_prof # compare maxprofits
            max_prof,sell_day=best_pick(prices[i..]) # the sell day index u get is "relative" i.e for sliced down array and 
            #u sliced i elm (when i =1 array is from 1 to n when 1=4 array is 4 to n)
            sell_day+=i# u want the index for when array was from 0 to n (original size) so u add back i to the relative index
            # u found in above step
            buy_day=i # update the buy day
        end
    end
    return [max_prof,buy_day,sell_day]
end

def best_pick(prices) # calculate max prof if u buy on a single day and sell on all possible days
    buy=prices[0] # u buy on 1st possible day
    max=0 # profit
    max_elm_indx=0
    prices[1..].each do |price|
        if price-buy>max
            max=price-buy
            max_elm_indx=prices.find_index(price)
        end
    end
    return [max,max_elm_indx] # return max profit and index of selling day that gt u max profit
end
stocks=[17,3,6,9,15,8,6,1,10]
stocks2=[4,8,2,10,12,8,9,13,0]

p stock_picker(stocks)
p stock_picker(stocks2)