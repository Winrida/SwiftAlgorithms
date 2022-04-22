import Foundation

// Обратный отсчёт путём рекурсии


func countdown(value: Int) {
    print (value)
    if value > 0 {
        countdown(value: value - 1)
    } else {
        return
    }
}

countdown(value: 10)
