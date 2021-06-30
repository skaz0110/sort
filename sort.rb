
def med3(x, y, z)
  if x < y
      if y < z
          return y
      elsif z < x
          return x
      else
          return z
      end
  else
      if z < y
          return y
      elsif x < z
          return x
      else
          return z
      end
  end
end

# /* クイックソート
#  * a     : ソートする配列
#  * left  : ソートするデータの開始位置
#  * right : ソートするデータの終了位置
#  */
def quicksort(a, left, right)

  if left < right
      i, j = left, right
      pivot = med3(a[i], a[i + (j - i) / 2], a[j])
      while true
          while a[i] < pivot do
              i+=1
          end
          while pivot < a[j] do
              j-=1
          end
          break if i >= j
          tmp = a[i]
          a[i] = a[j]
          a[j] = tmp
          i+=1
          j-=1
      end
      quicksort(a, left, i - 1)
      quicksort(a, j + 1, right)
  end
end

arr=[3,25,5,2,24,5,1]
quicksort(arr, 0, arr.length-1)
p arr