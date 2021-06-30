//
//  ViewController.swift
//  HelloGCD
//
//  Created by Sophia Wang on 2021/4/3.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let task1 = {
            for i in 1...5{
                print("Task1: \(i)")
            }
        }
        let task2 = {
            for i in 1...5{
                print("Task2: \(i)")
            }
    }
        //主佇列
        //DispatchQueue.main.async(execute: task1)
        //DispatchQueue.main.async(execute: task2)
        
        //共時佇列
        DispatchQueue.global().async(execute: task1)
        DispatchQueue.global().async(execute: task2)

}

}
