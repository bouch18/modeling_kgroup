//
//  WarningViewController.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/12/18.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

import UIKit


class WarningViewController: UIViewController {
    
    var warningView = WarningView()
    
    override func loadView() {
        self.view = warningView
    }
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.prepareAction()
        
        Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(WarningViewController.onUpdate(timer:)), userInfo: nil, repeats: true)
        
    }
    
    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
    @objc  func onUpdate(timer : Timer){

        warningView.cnt -= 0.1
        if (warningView.cnt <= 0.00 && warningView.minute == 0){
            warningView.myLabel.text = "カウント終了"
        }else if(warningView.cnt <= 0.00){
            warningView.minute -= 1
            warningView.cnt += 60
        }else{
            warningView.cnt -= 0.01
        }
        //桁数を指定して文字列を作る.
        let str = "\(warningView.minute):".appendingFormat("%.2f",warningView.cnt)
        _ = "\(warningView.minute):\(warningView.cnt)"
        warningView.myLabel.text = str

    }
    
    
    @objc func onClickMyButton(sender: UIButton){
        
        // 遷移するViewを定義する.
        let mySecondViewController: UIViewController = SecondViewController()
        // アニメーションを設定する.
        //        mySecondViewController.modalTransitionStyle = .partialCurl
        // Viewの移動する.
        self.present(mySecondViewController, animated: true, completion: nil)
    }
    
    //    override func didReceiveMemoryWarning() {
    //        super.didReceiveMemoryWarning()
    //        // Dispose of any resources that can be recreated.
    //    }
}

extension WarningViewController {
    fileprivate func prepareAction() {
        
        self.warningView.timerMeasurementButton.addTarget(self, action: #selector(self.onClickMyButton), for: .touchUpInside)
        
    }
}




