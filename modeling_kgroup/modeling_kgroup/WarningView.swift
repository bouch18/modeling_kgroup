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
    
    //Wanna cry のタイトル的なとこ
    var warningLabel = UILabel()
    //Payment will be raised on
    var paymentWarningLabel = UILabel()
    //Time Left
    var timeLeftLabel = UILabel()
//    var timerMeasurementButton  = RaisedButton()
    let viewController = ViewController()
    let warningText = NSDataAsset(name: "Warning.txt")
    //    利用規約本文用view
    let warningTextView: UITextView = UITextView()
    
    //鍵マークの画像
    let imageView_key = UIImageView(image:UIImage(named: "key-warning.png")!)

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
            $0.textColor = UIColor(red:0.749, green: 0.118, blue: 0.337, alpha: 1)
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
        
        _ = self.paymentWarningLabel.then{
            $0.text = "Payment will be raised on"
            $0.font = UIFont.systemFont(ofSize: 18)
            $0.layer.cornerRadius = 6
            $0.textAlignment = NSTextAlignment.center
            $0.backgroundColor = UIColor(red:0.525, green: 0.082, blue: 0.239, alpha: 1)
            $0.textColor = UIColor.yellow
            self.addSubview($0)
        }
        
        _ = self.timeLeftLabel.then{
            $0.text = "Time Left"
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
            $0.backgroundColor = UIColor(red:0.890, green: 0.890, blue: 0.890, alpha: 1)
            $0.pulseColor = UIColor(red:0.408,green: 0.812, blue: 0.902, alpha: 0.95)
            self.addSubview($0)
        }
        
        _ = self.cancelButton.then{
            $0.setTitle("Decrypt", for: .normal)
            $0.titleColor = UIColor(red:0.525, green: 0.082, blue: 0.239, alpha: 1)
            $0.layer.cornerRadius = 5
            //            $0.backgroundColor = UIColor(red:0.408,green: 0.812, blue: 0.765, alpha: 0.95)
            $0.backgroundColor = UIColor(red:0.890, green: 0.890, blue: 0.890, alpha: 1)
            $0.pulseColor = UIColor(red:0.408,green: 0.812, blue: 0.902, alpha: 0.95)
            self.addSubview($0)
        }
        _ = self.imageView_key.then{
            self.addSubview($0)
            //$0.backgroundColor = UIColor.white
        }
        

        
    }
    
    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
    override func layoutSubviews() {
        super.layoutSubviews()
        

        myLabel.snp.makeConstraints {
            $0.right.equalTo(self.snp.centerX).multipliedBy(1.90)
            $0.bottom.equalTo(self.snp.centerY).multipliedBy(0.70)
            $0.left.equalTo(self.snp.centerX).multipliedBy(0.85)
            $0.top.equalTo(self.snp.centerY).multipliedBy(0.55)
//            $0.centerX.equalToSuperview().multipliedBy(1.3)
//            $0.centerY.equalToSuperview().multipliedBy(0.5)
//            $0.width.equalTo(buttonSize.width)
//            $0.height.equalTo(buttonSize.height)
        }
        
        warningLabel.snp.makeConstraints {
            $0.right.equalTo(self.snp.centerX).multipliedBy(1.95)
            $0.bottom.equalTo(self.snp.centerY).multipliedBy(0.30)
            $0.left.equalTo(self.snp.centerX).multipliedBy(0.05)
            $0.top.equalTo(self.snp.centerY).multipliedBy(0.01)

        }
        
        paymentWarningLabel.snp.makeConstraints {
            $0.right.equalTo(self.snp.centerX).multipliedBy(1.90)
            $0.bottom.equalTo(self.snp.centerY).multipliedBy(0.40)
            $0.left.equalTo(self.snp.centerX).multipliedBy(0.75)
            $0.top.equalTo(self.snp.centerY).multipliedBy(0.25)
        }
        
        timeLeftLabel.snp.makeConstraints {
            $0.right.equalTo(self.snp.centerX).multipliedBy(1.90)
            $0.bottom.equalTo(self.snp.centerY).multipliedBy(0.55)
            $0.left.equalTo(self.snp.centerX).multipliedBy(0.85)
            $0.top.equalTo(self.snp.centerY).multipliedBy(0.40)
        }
        
        warningTextView.snp.makeConstraints {

            $0.right.equalToSuperview().multipliedBy(0.95)
            $0.bottom.equalToSuperview().multipliedBy(0.85)
            $0.left.equalTo(self.snp.centerX).multipliedBy(0.1)
            $0.top.equalTo(self.snp.centerY).multipliedBy(0.75)
        }
        
        cancelButton.snp.makeConstraints {
            $0.left.equalTo(self.snp.centerX).multipliedBy(0.1)
            $0.bottom.equalToSuperview().multipliedBy(0.95)
            $0.right.equalTo(self.snp.centerX).multipliedBy(0.975)
            $0.top.equalTo(self.snp.centerY).multipliedBy(1.75)
        }
        
        paymentButton.snp.makeConstraints {
            $0.right.equalToSuperview().multipliedBy(0.95)
            $0.bottom.equalToSuperview().multipliedBy(0.95)
            $0.left.equalTo(self.snp.centerX).multipliedBy(1.025)
            $0.top.equalTo(self.snp.centerY).multipliedBy(1.75)
        }
        
        
        imageView_key.snp.makeConstraints {
//            $0.centerY.equalToSuperview().multipliedBy(0.5)
            $0.top.equalTo(self.snp.centerY).multipliedBy(0.35)
            $0.left.equalTo(self.snp.centerX).multipliedBy(0.03)  //画像の外側の縁に無色があるため,0.01とし,warningTextViewの左側とそろえる。
            $0.bottom.equalTo(self.snp.centerY).multipliedBy(0.75)
            $0.right.equalTo(self.snp.centerX).multipliedBy(0.78)
        }
        

        
    }

    
    
}


