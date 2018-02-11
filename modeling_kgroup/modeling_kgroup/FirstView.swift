//
//  FirstView.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/12/12.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

//import Foundation

import UIKit
import Material
import Then
import SnapKit

class FirstView: UIView {
    
    
    //時間表示用のラベル.
    var cancelButton = RaisedButton()
    var permissionButton = RaisedButton()
    
    let imageView = UIImageView(image:UIImage(named: "title-iloveimg-cropped.png")!)
    
    let topColor = UIColor(red:0.07, green:0.13, blue:0.26, alpha:1)
    let bottomColor = UIColor(red:0.54, green:0.74, blue:0.74, alpha:1)
    
    let titleTextView: UILabel = UILabel()
    let asset = NSDataAsset(name: "sample-text.txt")
//    利用規約本文用view
    let myTextView: UITextView = UITextView()
    
    
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
        
        _ = self.titleTextView.then{
            $0.text = "利用規約"
            $0.textColor = UIColor.white
            $0.backgroundColor = UIColor(red:0.110,green: 0.510, blue: 0.667, alpha: 0.9)
            $0.textAlignment = NSTextAlignment.center
            $0.font = UIFont.systemFont(ofSize: 26)
            self.addSubview($0)
        }
        
        
        _ = self.myTextView.then{
            $0.text = String(data: (asset?.data)!, encoding: .utf8)
            $0.isEditable = false
            $0.isSelectable = false
            $0.font = UIFont.systemFont(ofSize: 16)
            $0.backgroundColor = UIColor(red:1,green: 1, blue: 1, alpha: 0.9)
            self.addSubview($0)
        }
        
        _ = self.cancelButton.then{
            $0.setTitle("取り消し", for: .normal)
            $0.layer.cornerRadius = 5
            $0.backgroundColor = UIColor(red:0.502,green: 0.475, blue: 0.525, alpha: 0.95)
            $0.pulseColor = UIColor(red:0.408,green: 0.812, blue: 0.902, alpha: 0.95)
            self.addSubview($0)
            // SnapKit
            // autolayoutの対象.snp.makeConstraints
//            self.snp.makeConstraints{ (make) in
//                make.centerY.equalTo(self.snp.centerY)
//                make.width.equalTo(self.snp.width).dividedBy(3)
//                make.left.equalTo(self.snp.right)
//            }
        }
        
        _ = self.permissionButton.then{
            $0.setTitle("承認", for: .normal)
            $0.layer.cornerRadius = 5
            $0.backgroundColor = UIColor(red:0.816,green: 0.259, blue: 0.333, alpha: 0.95)
            $0.pulseColor = UIColor(red:0.408,green: 0.812, blue: 0.902, alpha: 0.95)
            self.addSubview($0)
        }
        
    }
    
    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
    override func layoutSubviews() {
        super.layoutSubviews()
        
//        let buttonSize = CGSize(width: 200, height: 52)
        
        imageView.snp.makeConstraints {
            $0.right.bottom.left.top.equalToSuperview()
        }
        
        titleTextView.snp.makeConstraints {
            $0.right.equalToSuperview().multipliedBy(0.95)
            $0.left.equalTo(self.snp.centerX).multipliedBy(0.1)
            $0.bottom.equalTo(self.snp.centerY).multipliedBy(0.3)
            $0.top.equalTo(self.snp.centerY).multipliedBy(0.1)
        }
        

        myTextView.snp.makeConstraints {
            $0.right.equalToSuperview().multipliedBy(0.95)
            $0.bottom.equalToSuperview().multipliedBy(0.875)
            $0.left.equalTo(self.snp.centerX).multipliedBy(0.1)
            $0.top.equalTo(self.snp.centerY).multipliedBy(0.3)
        }
        
        cancelButton.snp.makeConstraints {
            $0.left.equalTo(self.snp.centerX).multipliedBy(0.1)
            $0.bottom.equalToSuperview().multipliedBy(0.95)
            $0.right.equalTo(self.snp.centerX).multipliedBy(1.0)
            $0.top.equalTo(self.snp.centerY).multipliedBy(1.75)
        }
        
        permissionButton.snp.makeConstraints {
            $0.right.equalToSuperview().multipliedBy(0.95)
            $0.bottom.equalToSuperview().multipliedBy(0.95)
            $0.left.equalTo(self.snp.centerX).multipliedBy(1.0)
            $0.top.equalTo(self.snp.centerY).multipliedBy(1.75)
        }
        
    }
}


