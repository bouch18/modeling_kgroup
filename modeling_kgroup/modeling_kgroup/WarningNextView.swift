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
            $0.text = "先程の画面は2017年度に流行した\nWannaCryというマルウェアの\nデモになります。"
            $0.textColor = UIColor.black
            $0.isEditable = false
            $0.isSelectable = false
            $0.layer.masksToBounds = true
            $0.font = UIFont.systemFont(ofSize: 20)
            $0.layer.cornerRadius = 5
            $0.backgroundColor = UIColor(red:1,green: 1, blue: 1, alpha: 0.45)
            self.addSubview($0)
        }
        
        
    }
    
    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let buttonSize = CGSize(width: 300, height: 300)
        

        
        
        warningNextView.snp.makeConstraints {
            //            $0.right.bottom.equalToSuperview()
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().multipliedBy(0.7)
            $0.width.equalTo(buttonSize.width)
            $0.height.equalTo(buttonSize.height)
            //            $0.left.equalTo(self.snp.centerX)
        }
        
        
        
        
    }
}


