//
//  ViewController.swift
//  Splash_screen_codeversion4
//
//  Created by 与那嶺東 on 2017/12/14.
//  Copyright © 2017年 与那嶺東. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ///アプリ初回起動時として以下のコードが動くと仮定
        ////////////////////////////コピペ　http://docs.fabo.io/swift/uikit/001_uilabel.html
        // ボタンのサイズを定義.
        let bWidth: CGFloat = 200
        let bHeight: CGFloat = 50
        
        // 配置する座標を定義(画面の中心).
        let posX: CGFloat = self.view.bounds.width/2 - bWidth/2
        let posY: CGFloat = self.view.bounds.height/2 - bHeight/2
        
        // Labelを作成.
        let label: UILabel = UILabel(frame: CGRect(x: posX, y: posY, width: bWidth, height: bHeight))
        
        // UILabelの背景をオレンジ色に.
        label.backgroundColor = UIColor.orange
        
        // UILabelの枠を丸くする.
        label.layer.masksToBounds = true
        
        // 丸くするコーナーの半径.
        label.layer.cornerRadius = 20.0
        
        // 文字の色を白に定義.
        label.textColor = UIColor.white
        
        // UILabelに文字を代入.
        label.text = "Hello Swift!!"
        
        // 文字の影をグレーに定義.
        label.shadowColor = UIColor.gray
        
        // Textを中央寄せにする.
        label.textAlignment = NSTextAlignment.center
        
        // Viewの背景を青にする.
        self.view.backgroundColor = UIColor.cyan
        
        // ViewにLabelを追加.
        self.view.addSubview(label)
        ///////////////////////////////////コピペ　http://docs.fabo.io/swift/uikit/001_uilabel.html
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

