class Array
    
	def quick_sort

		# 空、もしくは要素が1つのみの場合はそのまま返す。
		return self if self.size < 2
		
		# データの先頭の要素を設定する
		pivot = self.shift
		
		# それぞれpivotより大きい要素、小さい要素を格納する配列。
		smallers = []
		biggers = []
		self.each do |num|
			if num < pivot
					smallers << num
			else
					biggers << num
			end
		end
		
		# smallersとbiggersをソートして連結する
		smallers.quick_sort + [pivot] + biggers.quick_sort		
	end

end

test_array = []

# ５つの要素を持つランダムな配列を生成
5.times { test_array << rand(50) }
p test_array.quick_sort
