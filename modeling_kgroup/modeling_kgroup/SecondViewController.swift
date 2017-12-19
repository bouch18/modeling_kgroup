//
//  SecondViewController.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/12/14.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

import UIKit

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
        // 遷移するViewを定義する.
        let mySecondViewController: UIViewController = WarningViewController()
        // アニメーションを設定する.
        //        mySecondViewController.modalTransitionStyle = .partialCurl
        // Viewの移動する.
        self.present(mySecondViewController, animated: false, completion: nil)
    }
    
    @objc func onClickCancelButton(sender: UIButton){
        // 遷移するViewを定義する.
        let mySecondViewController: UIViewController = ViewController()
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

