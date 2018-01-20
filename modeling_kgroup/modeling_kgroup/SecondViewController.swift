//
//  SecondViewController.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/12/14.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation

class SecondViewController: UIViewController {
    
    
    var firstView = FirstView()
    
    override func loadView() {
        self.view = firstView
    }
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.prepareAction()
    }
    @objc func onClickMyButton(sender: UIButton){        
        
        let myAlert: UIAlertController = UIAlertController(title: "\"アニマム\"は写真へのアクセスを求めています", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        
        // OKアクション生成.
        let CancelAction = UIAlertAction(title: "許可しない", style: UIAlertActionStyle.default) { (action: UIAlertAction!) -> Void in
//            print("許可しない")
        }
        
        // Cancelアクション生成.
        let OkAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.destructive) { (action: UIAlertAction!) -> Void in
            let mySecondViewController: UIViewController = WarningViewController()
            AudioServicesPlaySystemSound (1016)
            self.present(mySecondViewController, animated: true, completion: nil)
            
//            print("OK")
        }
        
        
        myAlert.addAction(OkAction)
        myAlert.addAction(CancelAction)
        self.present(myAlert, animated: true, completion: nil)
    }
    
    @objc func onClickCancelButton(sender: UIButton){
        // 遷移するViewを定義する.
        let mySecondViewController: UIViewController = ViewController()
//        AudioServicesPlaySystemSound(1108)
        // アニメーションを設定する.
        //        mySecondViewController.modalTransitionStyle = .partialCurl
        // Viewの移動する.
        self.present(mySecondViewController, animated: false, completion: nil)
        
    }
    
}

extension SecondViewController {
    fileprivate func prepareAction() {
        
        self.firstView.cancelButton.addTarget(self, action: #selector(self.onClickCancelButton), for: .touchUpInside)
        self.firstView.permissionButton.addTarget(self, action: #selector(self.onClickMyButton), for: .touchUpInside)
        
        

    }
}

