//
//  ViewController.swift
//  modering
//
//  Created by 後藤大和 on 2017/11/30.
//  Copyright © 2017年 ryukyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // アラートを表示するためのボタン
        let button = UIButton(type: .system)
        button.setTitle("ゲームを始める!!", for: .normal)
        button.addTarget(self, action: #selector(self.showAlert), for: .touchUpInside)
        button.sizeToFit()
        button.center = self.view.center
        self.view.addSubview(button)
    }
    
    func showAlert() {
        
        // アラートを作成
        let alert = UIAlertController(
            title: "カメラの使用権限を許可しますか?",
            message: "アラートの本文",
            preferredStyle: .alert)
        
        // アラートにボタンをつける
        alert.addAction(UIAlertAction(title: "許可する", style: .default))
        alert.addAction(UIAlertAction(title: "許可しない", style: .default))
        
        // アラート表示
        self.present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
