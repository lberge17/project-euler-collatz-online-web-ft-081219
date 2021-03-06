def even_next(n)
    n / 2
end

def odd_next(n)
    3 * n + 1
end

def next_value(n)
    if n.even?
        even_next(n)
    else
        odd_next(n)
    end
end

def collatz(n)
    sequence = [n]
    until n == 1
        n = next_value(n)
        sequence.push(n)
    end
    sequence
end

def longest_collatz
    longest = 0
    result = nil
    (800000..1000000).each do |n|
        length = collatz(n).length
        if (length > longest)
            longest = length
            result = n
        end
    end
    result
end