# iterative fibonacci sequence

def fibs(n)
  fib = []

  (0..n).each do |i|
    if i == 0
      fib << 0
    elsif i == 1
      fib << 1
    else
      fib << fib[i-1] + fib[i-2]
    end
  end
  fib
end

p fibs(8)

# recursive fibonacci sequence

array = [0]

def fibs_rec(num)
  num <= 1 ? 1 : fibs_rec(num - 1) + fibs_rec(num - 2)
end

8.times do |i|
  array << fibs_rec(i)
end

p array

# merge sort

def merge_sort(array, sorted=[])
  # p 'Sorting'
  puts '-----'
  p "Array is #{array}"
  p "Sorted is #{sorted}"
  puts '-----'

  if array.length == 1
    sorted << array[0]
    p sorted
    sorted
  elsif array.length == 2
    if array[0] < array[1]
      sorted << array[0]
      sorted << array[1]
      p sorted
      sorted
    else
      sorted << array[1]
      sorted << array[0]
      p sorted
      sorted
    end
  else
    left = merge_sort(array.slice!(0, array.length/2))
    right = merge_sort(array)
    left.each do |x|
      right.each do |y|
        if x < y
          sorted << left.shift
        else
          sorted << right.shift
        end
      end
    end
    p sorted
    sorted
  end
end

p merge_sort([5, 2, 1, 3, 6, 4])