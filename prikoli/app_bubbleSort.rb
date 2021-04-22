# Сортировка массива пузырьком owo
def arrayRnd(array, size) # Заполняем массив в рандомном порядке от 1 до array.size (каждое число встречается один раз)
    array = [*1..size]
    array.shuffle!
end

def cringe_sort(array) # Сортировка
        0.upto(array.size - 2) do |i|
            j = i + 1
            array[i], array[j] = array[j], array[i] if array[i] > array[j]
        end
    return array
end

arr = []
arr = arrayRnd(arr, 10)
puts "До: \t#{arr.inspect}"
loop do
    gets
    cringe_sort(arr)
    puts "После: \t#{arr.inspect}"
    exit if arr == arr.sort
end