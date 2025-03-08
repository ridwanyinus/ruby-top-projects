def bubble_sort(arr)
  n = arr.length
  loop do
    swapped = false

    (1...n).each do |i|
      next unless arr[i - 1] > arr[i]

      arr[i - 1], arr[i] = arr[i], arr[i - 1]
      swapped = true
    end
    n -= 1
    break unless swapped
  end

  arr
end

puts bubble_sort([4, 3, 78, 2, 0, 2]).inspect
