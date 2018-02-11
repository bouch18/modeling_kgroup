//
//  WarningNextViewController.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/12/19.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

import UIKit

class WarningNextViewController: UIViewController {
    
    var warningNextView = WarningNextView()
    
    override func loadView() {
        self.view = warningNextView
    }
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.prepareAction()
        
    }
    
    @objc func onClickMyButton(sender: UIButton){
        
        // 遷移するViewを定義する.
        let myNextViewController: UIViewController = TableViewController()
        // アニメーションを設定する.
        //        mySecondViewController.modalTransitionStyle = .partialCurl
        // Viewの移動する.
        self.present(myNextViewController, animated: true, completion: nil)
    }
    
}

extension WarningNextViewController {
    fileprivate func prepareAction() {
        
        self.warningNextView.nextButton.addTarget(self, action: #selector(self.onClickMyButton), for: .touchUpInside)
        
    }
}






