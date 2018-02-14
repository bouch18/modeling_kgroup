//
//  ViewController.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/11/09.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    var startView = StartView()

    override func loadView() {
        self.view = startView
        
//        UILabel.amx_autoScaleFont(forReferenceScreenSize: .size4p7Inch)
//        UITextView.amx_autoScaleFont(forReferenceScreenSize: .size4p7Inch)

    }
    open override func viewDidLoad() {
        super.viewDidLoad()
        
//        UILabel.amx_autoScaleFont(forReferenceScreenSize: .size4p7Inch)
//        UITextView.amx_autoScaleFont(forReferenceScreenSize: .size4p7Inch)

        self.prepareAction()
        
    }

    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.

    
    
    @objc func onClickMyButton(sender: UIButton){
        
        // 遷移するViewを定義する.
        let mySecondViewController: UIViewController = SecondViewController()
        // アニメーションを設定する.
//        mySecondViewController.modalTransitionStyle = .partialCurl
        // Viewの移動する.
        self.present(mySecondViewController, animated: true, completion: nil)
    }
    
}

extension ViewController {
    fileprivate func prepareAction() {

        self.startView.startButton.addTarget(self, action: #selector(self.onClickMyButton), for: .touchUpInside)
      
    }
}



