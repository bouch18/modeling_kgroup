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
    
    //時間計測用の変数.
    var cnt : Float = 10.00
    //    var oclock : Int =
    var minute : Int = 30
    
    //    var second : Int = 0

    //時間表示用のラベル.
    var myLabel = UILabel()
    var timerMeasurementButton  = RaisedButton()
//    let viewController = ViewController()
    
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
        
        _ = self.timerMeasurementButton.then{
            $0.setTitle("Timer Rec", for: .normal)
            $0.layer.cornerRadius = 0
            $0.backgroundColor = UIColor.gray
            $0.pulseColor = UIColor.gray
//            $0.addTarget(self, action: #selector(viewController.onClickMyButton), for: .touchUpInside)
            self.addSubview($0)
        }
        
        _ = self.myLabel.then{
            $0.text = "\(minute)分\(cnt)秒"
            $0.layer.cornerRadius = 0
            $0.backgroundColor = UIColor.gray
            self.addSubview($0)
        }

        
    }
    
    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let buttonSize = CGSize(width: 0, height: 52)

        timerMeasurementButton.snp.makeConstraints {
            $0.right.bottom.equalToSuperview()
            $0.height.equalTo(buttonSize.height)
            $0.left.equalTo(self.snp.centerX)
        }
        self.myLabel.snp.makeConstraints {
            $0.left.bottom.height.equalToSuperview()
//            $0.width.equalTo(100)
//            $0.bottom.equalTo(buttonsize.width)
//            $0.height.equalTo(buttonSize.height)
            $0.right.equalTo(self.snp.centerX)
        }
        
    }
    
    

}
