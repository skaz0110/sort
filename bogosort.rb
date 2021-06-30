class Array

  def in_order?
    (1...length).each do |i|
      return false if self[i - 1] > self[i]
    end
    true
  end
  
  def bogo_sort
    
    # 配列の要素をランダムシャッフルし、繰り返す。
    self.shuffle! until self.in_order?
    self
  end

end

test_array = []

# ５つの要素を持つランダムな配列を生成
5.times { test_array << rand(50) }
p test_array.bogo_sort