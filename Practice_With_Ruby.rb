def digital_root(num)
  while num >= 10
    num = digital_root_step(num)
  end

  num
end

def digital_root_step(num)
  root = 0
  while num > 0
    root += (num % 10)

    num /= 10
  end

  root
end


def caesar_cipher(str, shift)
  letters = ("a".."z").to_a

  encoded_str = ""
  str.each_char do |char|
    if char == " "
      encoded_str << " "
      next
    end

    old_idx = letters.find_index(char)
    new_idx = (old_idx + shift) % letters.count

    encoded_str << letters[new_idx]
  end

  encoded_str
end


def sum_rec(nums)
  return 0 if nums.empty?
  nums[0] + sum_rec(nums.drop(1))
end



def fibs(num)
  return [] if num == 0
  return [0] if num == 1
  return [0, 1] if num == 2

  prev_fibs = fibs(num - 1)
  prev_fibs << prev_fibs[-1]  + prev_fibs[-2]

  prev_fibs
end

def my_sqrt(x)
    return x if x.nil? || x <= 1
    return cal_sqrt(x, 0, x)
end

def cal_sqrt(x, a, b)
    r = (a+b)/2
    r_2 = r * r
    return r if r_2 <= x && (r+1) ** 2 > x
    r_2 > x ? cal_sqrt(x, a, r) : cal_sqrt(x, r, b)
end
