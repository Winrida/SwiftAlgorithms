import Foundation

// Сортировка выбором
// Сложность O(n^2)


let array = [5, 2, 8, 7, 4, 9]

func findSmallestIndex (_ arr: [Int]) -> Int {
    var smallestValue = arr[0]
    var smallestIndex = 0
    
    for i in 1 ..< arr.count {
        if arr[i] < smallestValue {
            smallestValue = arr[i]
            smallestIndex = i
        }
    }
    return smallestIndex
}

func selectionSort (_ arr: [Int]) -> [Int] {
    var newArray = [Int]() // Будущий отсортированный массив
    var copyArray = arr    // Копирование массива для удаления индексов (по умолчанию let)
    
    for _ in 0 ..< copyArray.count {
        let index = findSmallestIndex(copyArray)
        newArray.append(copyArray.remove(at: index))
    }
    return newArray
}

print(selectionSort(array))
