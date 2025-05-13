# frozen_string_literal: true

def fibs(n)
  result = [0, 1]
  (n - 2).times { result << result[-1] + result[-2] }
  result.take(n)
end

def fibs_rec(n)
  return [0, 1].take(n) if n <= 2

  result = fibs_rec(n - 1)
  result + [result[-1] + result[-2]]
end
