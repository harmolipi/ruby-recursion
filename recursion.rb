# frozen_string_literal: true

# iterative fibonacci sequence

def fibs(num)
  fib = []

  (0..num).each do |i|
    fib << if i.zero?
             0
           elsif i == 1
             1
           else
             fib[i - 1] + fib[i - 2]
           end
  end
  fib
end

p "Iterative Fibonacci: #{fibs(8)}"

# recursive fibonacci sequence

fib_sequence = [0]

def fibs_rec(num)
  num <= 1 ? 1 : fibs_rec(num - 1) + fibs_rec(num - 2)
end

8.times do |i|
  fib_sequence << fibs_rec(i)
end

p "Recursive Fibonacci: #{fib_sequence}"

# merge sort

def merge_sort(array)
  if array.length < 2
    array
  else
    left = merge_sort(array[0...array.length / 2])
    right = merge_sort(array[array.length / 2..-1])

    x = 0
    y = 0
    sorted = []

    (left.length + right.length).times do
      if x >= left.length
        sorted << right[y..-1]
        break
      elsif y >= right.length
        sorted << left[x..-1]
        break
      end

      if left[x] < right[y]
        sorted << left[x]
        x += 1
      else
        sorted << right[y]
        y += 1
      end
    end

    sorted.flatten
  end
end

p "Merge sort: #{merge_sort([5, 2, 1, 26, 3, 6, 4, 7, 2, 1_000_225])}"
