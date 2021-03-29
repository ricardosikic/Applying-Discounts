def get_discounts(arr, str)
  
  if arr.length === 0
    return []
  end

  discount = (str.split(' ')[0].to_i) / 100.to_f

  newArr = Array.new()

  arr.each do |item|
    result = item.to_s.split('')[2].to_i > 0 ? item : item * discount

    finalResult = result.to_s.split('')[2].to_i > 0 ? result : result.to_s.split('').join('').to_i
    newArr << finalResult
	end
	
	return newArr

end

get_discounts([100], "45%")

=begin 
get_discounts([2, 4, 6, 11], "50%") ➞ [1, 2, 3, 5.5]
get_discounts([10, 20, 40, 80], "75%") ➞ [7.5, 15, 30, 60]
get_discounts([100], "45%") ➞ [45] 
=end