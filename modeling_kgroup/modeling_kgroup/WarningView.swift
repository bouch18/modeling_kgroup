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
//    var timerMeasurementButton  = RaisedButton()
    let viewController = ViewController()
    let warningText = NSDataAsset(name: "Warning.txt")
    //    利用規約本文用view
    let warningTextView: UITextView = UITextView()
    
    var paymentButton = RaisedButton()
    var cancelButton = RaisedButton()
    
    
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
            $0.text = "Ooops, your files have been encrypted!"
            $0.font = UIFont.systemFont(ofSize: 20)
            $0.layer.cornerRadius = 10
            $0.textAlignment = NSTextAlignment.center
            $0.backgroundColor = UIColor(red:0.525, green: 0.082, blue: 0.239, alpha: 1)
            $0.textColor = UIColor.white
            self.addSubview($0)
        }
        
        _ = self.warningTextView.then{
            $0.text = String(data: (warningText?.data)!, encoding: .utf8)
            $0.isEditable = false
            $0.isSelectable = false
            $0.textColor = UIColor.black
            $0.font = UIFont.systemFont(ofSize: 16)
            $0.backgroundColor = UIColor(red:1,green: 1, blue: 1, alpha: 1)
            self.addSubview($0)
        }
        
        _ = self.paymentButton.then{
            $0.setTitle("check pyment", for: .normal)
            $0.titleColor = UIColor(red:0.525, green: 0.082, blue: 0.239, alpha: 1)
            $0.layer.cornerRadius = 5
            //            $0.backgroundColor = UIColor(red:0.408,green: 0.812, blue: 0.765, alpha: 0.95)
            $0.backgroundColor = UIColor.white
            $0.pulseColor = UIColor(red:0.408,green: 0.812, blue: 0.902, alpha: 0.95)
            self.addSubview($0)
        }
        
        _ = self.cancelButton.then{
            $0.setTitle("Decrypt", for: .normal)
            $0.titleColor = UIColor(red:0.525, green: 0.082, blue: 0.239, alpha: 1)
            $0.layer.cornerRadius = 5
            //            $0.backgroundColor = UIColor(red:0.408,green: 0.812, blue: 0.765, alpha: 0.95)
            $0.backgroundColor = UIColor.white
            $0.pulseColor = UIColor(red:0.408,green: 0.812, blue: 0.902, alpha: 0.95)
            self.addSubview($0)
        }
        
        
    }
    
    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let buttonSize = CGSize(width: 200, height: 52)
        let warningSize = CGSize(width: 400, height: 100)

        myLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview().multipliedBy(1.3)
            $0.centerY.equalToSuperview().multipliedBy(0.5)
            $0.width.equalTo(buttonSize.width)
            $0.height.equalTo(buttonSize.height)
        }
        
        warningLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().multipliedBy(0.2)
            $0.width.equalTo(warningSize.width)
            $0.height.equalTo(warningSize.height)
//            $0.right.equalToSuperview().multipliedBy(0.95)
//            $0.bottom.equalToSuperview().multipliedBy(0.95)
//            $0.left.equalTo(self.snp.centerX).multipliedBy(0.05)
//            $0.top.equalTo(self.snp.centerY).multipliedBy(0.4)
        }
        
        warningTextView.snp.makeConstraints {
//            $0.centerX.equalToSuperview()
//            $0.centerY.equalToSuperview().multipliedBy(0.8)
//            $0.width.equalTo(warningSize.width)
//            $0.height.equalTo(warningSize.height)
            $0.right.equalToSuperview().multipliedBy(0.95)
            $0.bottom.equalToSuperview().multipliedBy(0.85)
            $0.left.equalTo(self.snp.centerX).multipliedBy(0.1)
            $0.top.equalTo(self.snp.centerY).multipliedBy(0.75)
        }
        
        cancelButton.snp.makeConstraints {
            $0.left.equalTo(self.snp.centerX).multipliedBy(0.15)
            $0.bottom.equalToSuperview().multipliedBy(0.95)
            $0.right.equalTo(self.snp.centerX)
            $0.top.equalTo(self.snp.centerY).multipliedBy(1.75)
        }
        
        paymentButton.snp.makeConstraints {
            $0.right.equalToSuperview().multipliedBy(0.1)
            $0.bottom.equalToSuperview().multipliedBy(0.95)
            $0.left.equalTo(self.snp.centerX)
            $0.top.equalTo(self.snp.centerY).multipliedBy(1.75)
        }
        
        
        
    }

    
    
}


