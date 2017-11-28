//
//  ViewController.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/11/09.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //時間計測用の変数.
    var cnt : Float = 10.00
    

    
//    var oclock : Int =
    
    var minute : Int = 30
    
//    var second : Int = 0
    
    
    
    //時間表示用のラベル.
    var myLabel : UILabel!
    
    override func viewDidLoad() {
        
        //ラベルを作る.
        myLabel = UILabel(frame: CGRect(x:0,y:0,width:200,height:50))
        myLabel.backgroundColor = UIColor.orange
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = 20.0
        myLabel.text = "\(minute)分\(cnt)秒"
        myLabel.textColor = UIColor.white
        myLabel.shadowColor = UIColor.gray
        myLabel.textAlignment = NSTextAlignment.center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        self.view.backgroundColor = UIColor.cyan
        self.view.addSubview(myLabel)
        
        //タイマーを作る.
        Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(ViewController.onUpdate(timer:)), userInfo: nil, repeats: true)
    }
    
    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
    @objc func onUpdate(timer : Timer){
        
//        cnt += 0.1
        if (cnt <= 0.00 && minute == 0){
            myLabel.text = "カウント終了"
        }else if(cnt <= 0.00){
            minute -= 1
            cnt += 60
        }else{
            cnt -= 0.01
        }
        
        
        //桁数を指定して文字列を作る.
        let str = "\(minute)分".appendingFormat("%.2f",cnt)
//        let str = "\(minute)分\(cnt)秒"
        
        myLabel.text = str
        
    }
}
