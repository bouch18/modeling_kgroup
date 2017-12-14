//
//  ViewController.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/11/09.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstView = FirstView()

    override func loadView() {
        self.view = firstView
    }
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(ViewController.onUpdate(timer:)), userInfo: nil, repeats: true)

    }

    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
    @objc  func onUpdate(timer : Timer){

        firstView.cnt -= 0.1
        if (firstView.cnt <= 0.00 && firstView.minute == 0){
           firstView.myLabel.text = "カウント終了"
        }else if(firstView.cnt <= 0.00){
            firstView.minute -= 1
            firstView.cnt += 60
        }else{
            firstView.cnt -= 0.01
        }
        //桁数を指定して文字列を作る.
        let str = "\(firstView.minute)分".appendingFormat("%.2f",firstView.cnt)
        _ = "\(firstView.minute)分\(firstView.cnt)秒"
        firstView.myLabel.text = str
        
    }
}


