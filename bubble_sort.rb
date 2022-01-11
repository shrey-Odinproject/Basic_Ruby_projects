def bubble_sort(arr)
  swap = true
  while swap
    swap = false
    arr.first(arr.length - 1).each_with_index do |_num, i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = true
      end
    end
  end
  arr
end
arr = [4, 3, 78, 2, 0, 2]
p bubble_sort(arr)
