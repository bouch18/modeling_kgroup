//
//  WarningView.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/12/14.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

import UIKit
import Material
import Then
import SnapKit

class WarningView: UIView {
    
    //時間計測用の変数.
    var cnt : Float = 10.00
    //    var oclock : Int =
    var minute : Int = 30
    

    
    //時間表示用のラベル.
    var myLabel = UILabel()
    var warningLabel = UILabel()
    var timerMeasurementButton  = RaisedButton()
    let viewController = ViewController()
    let warningText = NSDataAsset(name: "sample-text.txt")
    //    利用規約本文用view
    let warningTextView: UITextView = UITextView()
    
    
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
        
//        self.backgroundColor = UIColor.red
        self.backgroundColor = UIColor(red:0.525, green: 0.082, blue: 0.239, alpha: 1)
        
        _ = self.myLabel.then{
            $0.text = "\(minute):\(cnt)"
            $0.layer.cornerRadius = 20
            $0.textAlignment = NSTextAlignment.center
            $0.backgroundColor = UIColor.white
            $0.textColor = UIColor.red
            self.addSubview($0)
        }
        
        _ = self.warningLabel.then{
            $0.text = "WARNING"
            $0.font = UIFont.systemFont(ofSize: 36)
            $0.layer.cornerRadius = 10
            $0.textAlignment = NSTextAlignment.center
            $0.backgroundColor = UIColor(red:0.525, green: 0.082, blue: 0.239, alpha: 1)
            $0.textColor = UIColor.white
            self.addSubview($0)
        }
        
        
    }
    
    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let buttonSize = CGSize(width: 200, height: 52)
        let warningSize = CGSize(width: 400, height: 150)

        self.myLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview().multipliedBy(1.3)
            $0.centerY.equalToSuperview().multipliedBy(0.5)
            $0.width.equalTo(buttonSize.width)
            $0.height.equalTo(buttonSize.height)
        }
        
        self.warningLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().multipliedBy(0.8)
            $0.width.equalTo(warningSize.width)
            $0.height.equalTo(warningSize.height)
        }
        
    }

    
    
}


