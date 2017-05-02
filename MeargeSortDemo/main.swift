//
//  main.swift
//  MeargeSortDemo
//
//  Created by iFlame on 02/05/17.
//  Copyright © 2017 IFlame. All rights reserved.
//

import Foundation

func merge(left:[Int],right:[Int]) -> [Int] {
    var mergedList = [Int]()
    var left = left
    var right = right
    
    while left.count > 0 && right.count > 0 {
        if left.first! < right.first! {
            mergedList.append(left.removeFirst())
        } else {
            mergedList.append(right.removeFirst())
        }
    }
    
    return mergedList + left + right
}

func mergeSort(list:[Int]) -> [Int] {
    guard list.count > 1 else {
        return list
    }
    
    let leftList = Array(list[0..<list.count/2])
    let rightList = Array(list[list.count/2..<list.count])
    
    return merge(left: mergeSort(list:leftList), right: mergeSort(list:rightList))
}
var list = [1,32,45,7,97,14,65,42,78,36,97,1,0]


print(mergeSort(list: list))
