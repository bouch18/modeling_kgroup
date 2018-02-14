//
//  WarningNextView.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/12/19.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

import UIKit
import Material
import Then
import SnapKit

class WarningNextView: UIView {
    
    
    
    let topColor = UIColor(red:0.07, green:0.13, blue:0.26, alpha:1)
    let bottomColor = UIColor(red:0.54, green:0.74, blue:0.74, alpha:1)
    
    var nextButton  = RaisedButton()
    
    let warningNextView: UITextView = UITextView()
    
    
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
        
        self.backgroundColor = UIColor.white
        
        
        _ = self.warningNextView.then{
            $0.text = "先程の画面は2017年度に流行したWannaCryというマルウェアのデモになります。\n\nマルウェアに被害にあうことがどのようなものか体験できたと思います。\n\n知っていることで対策ができるので、引き続きセキュリティ知識アプリとしてご利用ください"
            $0.textColor = UIColor.black
            $0.isEditable = false
            $0.isSelectable = false
            $0.layer.masksToBounds = true
            $0.font = UIFont.systemFont(ofSize: 20)
            $0.layer.cornerRadius = 5
            $0.backgroundColor = UIColor(red:1,green: 1, blue: 1, alpha: 0.45)
            self.addSubview($0)
        }
        
        _ = self.nextButton.then{
            $0.setTitle("次へ", for: .normal)
//            $0.titleColor = UIColor(red:0.525, green: 0.082, blue: 0.239, alpha: 1)
            $0.titleColor = UIColor.white
            $0.layer.cornerRadius = 5
            //            $0.backgroundColor = UIColor(red:0.408,green: 0.812, blue: 0.765, alpha: 0.95)
//            $0.backgroundColor = UIColor.white
            $0.backgroundColor = UIColor(red: 0.259,green: 0.667, blue: 0.780, alpha: 0.95)
            $0.pulseColor = UIColor(red:0.408,green: 0.812, blue: 0.902, alpha: 0.95)
            $0.pulseColor = UIColor.white
            self.addSubview($0)
        }
    
        
    }
    
    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
    override func layoutSubviews() {
        super.layoutSubviews()
        
//        let buttonSize = CGSize(width: 300, height: 300)
        

        
        
        warningNextView.snp.makeConstraints {
            $0.right.equalToSuperview().multipliedBy(0.95)
            $0.bottom.equalToSuperview().multipliedBy(0.85)
            $0.left.equalTo(self.snp.centerX).multipliedBy(0.1)
            $0.top.equalTo(self.snp.centerY).multipliedBy(0.45)
        }
        
        nextButton.snp.makeConstraints {
            $0.right.equalToSuperview().multipliedBy(0.95)
            $0.bottom.equalToSuperview().multipliedBy(0.95)
            $0.left.equalTo(self.snp.centerX).multipliedBy(1.025)
            $0.top.equalTo(self.snp.centerY).multipliedBy(1.75)
        }
        
        
        
    }
}


