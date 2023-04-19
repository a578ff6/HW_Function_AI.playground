/*請設計一個 Swift function，計算達美樂披薩「不包含餅皮」的面積。該函數應接受兩個參數，分別為披薩的半徑和餅皮覆蓋的面積比例（0 到 1 之間的一個小數）。函數應該返回披薩的實際面積（不含餅皮）。
 函數名稱為 pizzaArea，輸入為兩個 Double 型別的參數 radius 和 crustPercentage。其中，radius 為披薩的半徑，而 crustPercentage 表示披薩上餅皮覆蓋的面積比例（0 到 1 之間的一個小數）。
 在函數內部，首先計算出披薩的總面積，然後再計算出餅皮的面積，最後用總面積減去這個面積，就可以得到披薩不含餅皮的實際面積。*/

// import Foundation，這樣就可以使用 round 函數了。這是因為 round 函數是在 Foundation 模組中定義的。
//import Foundation
//
//func pizzaArea(radius: Double, crustPercentage: Double) {
//    let totalArea = radius * radius * Double.pi
//    let crustArea = totalArea * crustPercentage
//    let pizzaFillingArea = totalArea - crustArea
//
//    let roundedTotalArea = round(totalArea * 100) / 100
//    let roundedCrustArea = round(crustArea * 100) / 100
//    let roundedpizzaFillingArea = round(pizzaFillingArea * 100) / 100
//
//    print("這個披薩含餅皮的總面積為\(roundedTotalArea)，而餅皮的總面積為\(roundedCrustArea)，因此不包含餅邊的實際面積為\(roundedpizzaFillingArea)")
//}
//
//pizzaArea(radius: 10, crustPercentage: 0.3)

/* ChatGPT解說：將 pizzaArea 的值乘以 100，這樣可以將小數點向右移動兩位。接著，我們使用 round 函數將結果四捨五入到最接近的整數。然後，我們將結果除以 100，將小數點向左移動兩位，以便獲得保留兩位小數的結果。需要注意的是，我們必須使用小數點後兩位的倍數作為乘數和除數，這樣才能確保結果是正確的。*/


//func pizzaArea(radius: Double, crustPercentage: Double) {
//    let totalArea = radius * radius * Double.pi
//    let crustArea = totalArea * crustPercentage
//    let pizzaFillingArea = totalArea - crustArea
//
//    print("這個披薩不包含餅邊的實際面積為\(pizzaFillingArea)")
//}
//
//pizzaArea(radius: 10, crustPercentage: 0.5)


/* 請設計一個 Swift function，計算三個魔戒的總重量。該函數應接受三個參數，分別為「精靈之戒」、「人類之戒」和「矮人之戒」的重量，單位為克（g）。函數應該返回三個魔戒的總重量，單位仍為克（g）。
 函數名稱為 ringWeight，輸入為三個 Double 型別的參數 elvenRingWeight、humanRingWeight 和 dwarfRingWeight，分別表示「精靈之戒」、「人類之戒」和「矮人之戒」的重量，單位為克（g）。
 在函數內部，將三個參數相加，就可以得到三個魔戒的總重量。最後，在函數中印出計算結果。 */

//func ringWeight(elvenRingWeight: Double, humanRingWeight: Double, dwarfRingWeight: Double) {
//    let totalRingWeight = elvenRingWeight + humanRingWeight + dwarfRingWeight
//
//    print("三個魔戒的總重量為\(totalRingWeight)g")
//}
//
//ringWeight(elvenRingWeight: 20.3, humanRingWeight: 12, dwarfRingWeight: 13)




/*題目：寫一個名為 "calculateRingVolume" 的 Swift function，此 function 接收三個參數，分別為艾爾登法環的內徑 (innerRadius)、外徑 (outerRadius) 和高度 (height)，並計算出該環的體積。
 
 艾爾登法環的體積計算方式如下：

 先計算出環的平均半徑 (averageRadius)，其為內徑和外徑的平均值，公式為：(innerRadius + outerRadius) / 2

 再將平均半徑和高度代入以下公式求出體積：π * (averageRadius^2 - innerRadius^2) * height

 最後，請在 function 中印出計算出來的環的體積值。*/




//import Foundation
//
//func calculateRingVolume(innerRadius: Double, outerRadius: Double, height: Double) {
//    let averageRadius = (innerRadius + outerRadius) / 2
//    let RingVolume = Double.pi * (averageRadius * averageRadius - innerRadius * innerRadius) * height
//
//    let roundendRingVolume = round(100 * RingVolume) / 100
//
//    print("直接修復法環的宿命之主，當上「艾爾登之王」，艾爾登法環的體積為\(roundendRingVolume)!")
//}
//
//calculateRingVolume(innerRadius: 5, outerRadius: 8, height: 2)



/*題目：寫一個名為 "calculateCasesSolved" 的 Swift function，此 function 接收三個參數，分別為名偵探柯南所解決的案件數量 (casesSolved)、案件平均解決時間 (averageTime) 和柯南的工作時間 (workTime)分鐘，並計算出柯南的解決率。
 
 名偵探柯南的解決率計算方式如下：

 將柯南的工作時間 (workTime) 分鐘換算成小時，公式為：workTime / 60

 再將解決案件的總時間 (casesSolved * averageTime) 除以柯南工作的總時間，公式為：(casesSolved * averageTime) / (workTime / 60)

 最後，請在 function 中印出計算出來的柯南的解決率值 (四捨五入到小數點第二位)。

 請解答*/

import Foundation

func calculateCasesSolved(casesSolved: Int, averageTime: Double, workTime: Double) {
    let convertedWorkTime = workTime / 60
    let totalSolvedTime = Double(casesSolved) * averageTime
    let solvedRate = totalSolvedTime / convertedWorkTime

    let roundedCasesSolvedRate = round(100 * solvedRate) / 100


    print("柯南的案件解決率為\(roundedCasesSolvedRate)%")
}

// // 假設柯南總共解決了 456 個案件，平均解決一件案件需要 7 小時，柯南的總工作時間為 14000 分鐘
calculateCasesSolved(casesSolved: 456, averageTime: 7, workTime: 14000)



// 練習 %.2f
//import Foundation
//
//func calculateCasesSolved(casesSolved: Int, averageTime: Double, workTime: Double) {
//    let convertedWorkTime = workTime / 60
//    let totalSolvedTime = Double(casesSolved) * averageTime
//    let solvedRate = totalSolvedTime / convertedWorkTime
//
//    print("柯南的解決率為：\(String(format: "%.2f", solvedRate))%")
//
//
//}
//
//// // 假設柯南總共解決了 456 個案件，平均解決一件案件需要 7 小時，柯南的總工作時間為 14000 分鐘
//calculateCasesSolved(casesSolved: 456, averageTime: 7, workTime: 14000)
