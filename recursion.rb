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