//
//  StartView.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/12/14.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

import UIKit
import Material
import Then
import SnapKit

class StartView: UIView {

    
    
    //スタートボタン
    var startButton  = RaisedButton()

    //画面の大きさを以下で取得しています.
    let screenWidth: CGFloat = UIScreen.main.bounds.width      //画面の幅
    let screenHeight: CGFloat = UIScreen.main.bounds.height    //画面の高さ
    //時間表示用のラベル.

    let imageView = UIImageView(image:UIImage(named: "title-iloveimg-cropped.png")!)
    
    let topColor = UIColor(red:0.07, green:0.13, blue:0.26, alpha:1)
    let bottomColor = UIColor(red:0.54, green:0.74, blue:0.74, alpha:1)

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        
        self.backgroundColor = UIColor.cyan
        
        _ = self.imageView.then{
            self.addSubview($0)
        }
        

        _ = self.startButton.then{

            $0.setTitle("始める", for: .normal)
            $0.layer.cornerRadius = 25
            $0.backgroundColor = UIColor(red:0.408,green: 0.812, blue: 0.765, alpha: 0.765)
            $0.pulseColor = UIColor(red:0.408,green: 0.812, blue: 0.902, alpha: 0.765)
            self.addSubview($0)
            

        }
        
        
        
    }
    
    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
    override func layoutSubviews() {
        super.layoutSubviews()

        

//        let buttonSize = CGRect(x:screenWidth/2, y:screenHeight/2,
//                                width:screenWidth/3, height:screenHeight/10)
        
//        let button = UIButton.init()
//        button.titleLabel?.adjustsFontSizeToFitWidth = true
//        button.titleLabel?.minimumScaleFactor = 10.0  //最小でも80%までしか縮小しない場合

        
        imageView.snp.makeConstraints {
            $0.right.bottom.left.top.equalToSuperview()
            
        }
        
        

        startButton.snp.makeConstraints {
            $0.right.equalTo(self.snp.centerX).multipliedBy(1.5)
            $0.bottom.equalTo(self.snp.centerY).multipliedBy(1.6)
            $0.left.equalTo(self.snp.centerX).multipliedBy(0.5)
            $0.top.equalTo(self.snp.centerY).multipliedBy(1.35)
        }}

}

