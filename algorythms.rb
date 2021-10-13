# bubble

def bubble_sort(array)
    return array if array.size <= 1
    swap = true
      while swap
        swap = false
        (array.length - 1).times do |x|
          if array[x] > array[x+1]
            array[x], array[x+1] = array[x+1], array[x]
            swap = true
          end
        end
      end
    array
  end



def insertion_sort(array)
(array.length).times do |j|
    while j > 0
    if array[j-1] > array[j]
        array[j], array[j-1] = array[j-1], array[j]
    else
        break
    end
    j-=1
    end
end
array
end

# selection sort

def selection_sort(array)
    n = array.length - 1
    n.times do |i|
      min_index = i
      for j in (i + 1)..n
        min_index = j if array[j] < array[min_index]
      end
      array[i], array[min_index] = array[min_index], array[i] if min_index != i
    end
    array
  end

# merge sort

def merge_sort(array)
    if array.length <= 1
      array
    else
      mid = (array.length / 2).floor
      left = merge_sort(array[0..mid-1])
      right = merge_sort(array[mid..array.length])
      merge(left, right)
    end
end
  
def merge(left, right)
    if left.empty?
        right
    elsif right.empty?
        left
    elsif left[0] < right[0]
        [left[0]] + merge(left[1..left.length], right)
    else
        [right[0]] + merge(left, right[1..right.length])
    end
end

# quick sort

def quick_sort(array)
    return array if array.length <= 1
    pivot = array.delete_at(rand(array.length))
  
    left = Array.new
    right = Array.new
  
    array.each do |x|
      if x <= pivot
        left << x
      else
        right << x
      end
    end
  
    return *quick_sort(left), pivot ,*quick_sort(right)
  
end

def heap_sort(array)
    n = array.length 
    a = [nil] + array
    
    (n / 2).downto(1) do |i| 
      heapify(a, i, n) 
    end
  
    while n > 1
      a[1], a[n] = a[n], a[1]
      n -= 1
      heapify(a, 1, n)
    end
    a.drop(1) 
end
  
  
def heapify(array, parent, limit)
    root = array[parent] 
    while (child = 2 * parent) <= limit
        child += 1 if child < limit && array[child] < array[child + 1] 
        break if root >= array[child] 
        array[parent], parent = array[child], child 
        array[parent] = root 
    end
end

# binary - O(log(n))
# linear - O(n)
# quick - O(nlog(n))
# merge - O(nlog(n))
# bubble - O(n^2)
# inserts - O(n^2)
# choose - O(n^2)


p [1,2,4,8].bsearch {|x| x >= 1}
