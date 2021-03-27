# Сортировка массива пузырьком owo
def arrayRnd(array) # Заполняем массив в рандомном порядке от 1 до array.size (каждое число встречается один раз)
    already_here = []
    i = 0
    loop do
        rnd = rand(1..array.size)
        if !already_here.any?(rnd)
            array[i] = rnd
            already_here << rnd
            i += 1
        elsif i == array.size
            break
        end
    end
    return array
end

def cringe_sort(array) # Сортировка
    array.each_index do
        0.upto(array.size - 2) do |i|
            j = i + 1
            array[i], array[j] = array[j], array[i] if array[i] > array[j]
        end
    end
    return array
end

arr = Array.new(10)
arrayRnd(arr)
puts "До: \t#{arr.inspect}"
cringe_sort(arr)
puts "После: \t#{arr.inspect}"