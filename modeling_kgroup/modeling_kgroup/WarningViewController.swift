//
//  WarningViewController.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/12/18.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

import UIKit
import AudioToolbox


class WarningViewController: UIViewController {
    
    var warningView = WarningView()
    var timerSound : Timer?
    var timerLimit : Timer?

    
    override func loadView() {
        self.view = warningView
        
        self.startLimitTimer()
        self.startSoundTimer()
    }
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.prepareAction()
        
//        Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(WarningViewController.onUpdate(timer:)), userInfo: nil, repeats: true)
//
//        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(WarningViewController.onSounds(timer:)), userInfo: nil, repeats: true)
        
    }
    
    @objc func startLimitTimer() {
        
//        if startLimitTimer == nil {
            timerLimit =  Timer.scheduledTimer(
                timeInterval: TimeInterval(0.01),
                target      : self,
                selector    : #selector(WarningViewController.onUpdate(timer:)),
                userInfo    : nil,
                repeats     : true)
//        }
    }
    
    @objc func stopTimerTest() {
//        if startLimitTimer != nil {
            timerLimit?.invalidate()
//            startLimitTimer = nil
//        }
    }
    @objc func startSoundTimer() {
        
        //        if startLimitTimer == nil {
        timerSound =  Timer.scheduledTimer(
            timeInterval: TimeInterval(0.5),
            target      : self,
            selector    : #selector(WarningViewController.onSounds(timer:)),
            userInfo    : nil,
            repeats     : true)
        //        }
    }
    
    @objc func stopSoundTest() {
        //        if startLimitTimer != nil {
        timerSound?.invalidate()
        //            startLimitTimer = nil
        //        }
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
    
    @objc func onSounds(timer : Timer){
        if (warningView.minute >= 30){
            AudioServicesPlaySystemSound (1016)
        }
    }
    
    
    @objc func onPaymentButton(sender: UIButton){
        
        let myAlert: UIAlertController = UIAlertController(title: "お支払のためにbitcoinに移動しますか？", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        
        // cancelアクション生成.
        let CancelAction = UIAlertAction(title: "いいえ", style: UIAlertActionStyle.default) { (action: UIAlertAction!) -> Void in
            //            print("許可しない")
        }
        
        // okアクション生成.
        let OkAction = UIAlertAction(title: "はい", style: UIAlertActionStyle.destructive) { (action: UIAlertAction!) -> Void in
            let mySecondViewController: UIViewController = WarningViewController()
            AudioServicesPlaySystemSound (1016)
            self.present(mySecondViewController, animated: true, completion: nil)
            self.stopTimerTest()
            self.stopSoundTest()
            //            print("OK")
        }
        
        
        myAlert.addAction(OkAction)
        myAlert.addAction(CancelAction)
        self.present(myAlert, animated: true, completion: nil)
    }
    
    @objc func onCancelButton(sender: UIButton){
        
        let myAlert: UIAlertController = UIAlertController(title: "本当にcancelしますか？", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        
        // OKアクション生成.
        let CancelAction = UIAlertAction(title: "いいえ", style: UIAlertActionStyle.default) { (action: UIAlertAction!) -> Void in
            //            print("許可しない")
        }
        
        // Cancelアクション生成.
        let OkAction = UIAlertAction(title: "はい", style: UIAlertActionStyle.destructive) { (action: UIAlertAction!) -> Void in
            let myNextViewController: UIViewController = WarningNextViewController()
//            AudioServicesPlaySystemSound (1016)
            self.present(myNextViewController, animated: true, completion: nil)
            self.stopTimerTest()
            self.stopSoundTest()
            //            print("OK")
        }
        
        
        myAlert.addAction(OkAction)
        myAlert.addAction(CancelAction)
        self.present(myAlert, animated: true, completion: nil)
    }
    
    //    override func didReceiveMemoryWarning() {
    //        super.didReceiveMemoryWarning()
    //        // Dispose of any resources that can be recreated.
    //    }
}

extension WarningViewController {
    fileprivate func prepareAction() {
        
        self.warningView.paymentButton.addTarget(self, action: #selector(self.onPaymentButton), for: .touchUpInside)
        self.warningView.cancelButton.addTarget(self, action: #selector(self.onCancelButton), for: .touchUpInside)
        
    }
}




