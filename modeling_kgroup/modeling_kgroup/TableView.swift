//
//  TableView.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2018/01/25.
//  Copyright © 2018 Univ of the Ryukyu. All rights reserved.
//

import UIKit
import Material
import Then
import SnapKit

class TableView: UIView {
    
//    fileprivate var tableView: TableView!
//    fileprivate var toolbar: Toolbar!
    private var myTableView: UITableView!
//
//    let topColor = UIColor(red:0.07, green:0.13, blue:0.26, alpha:1)
//    let bottomColor = UIColor(red:0.54, green:0.74, blue:0.74, alpha:1)
//
//    var nextButton  = RaisedButton()
//
//    let warningNextView: UITextView = UITextView()
//
//
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
//
//        self.backgroundColor = UIColor.white
//
//
        _ = self.myTableView.then{_ in
//            myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight))
            
            // Cell名の登録をおこなう.
            myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
            
            // DataSourceを自身に設定する.
            myTableView.dataSource = self as? UITableViewDataSource
            
            // Delegateを自身に設定する.
            myTableView.delegate = (self as! UITableViewDelegate)
            
            // Viewに追加する.
            self.addSubview(myTableView)
        }
//
//
//        _ = self.nextButton.then{
//            $0.setTitle("次へ", for: .normal)
//            $0.titleColor = UIColor(red:0.525, green: 0.082, blue: 0.239, alpha: 1)
//            $0.layer.cornerRadius = 5
//            //            $0.backgroundColor = UIColor(red:0.408,green: 0.812, blue: 0.765, alpha: 0.95)
//            $0.backgroundColor = UIColor.white
//            $0.pulseColor = UIColor(red:0.408,green: 0.812, blue: 0.902, alpha: 0.95)
//            self.addSubview($0)
//        }
//
//
    }
//
//    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
    override func layoutSubviews() {
//        super.layoutSubviews()
//
//        let buttonSize = CGSize(width: 300, height: 300)
//
//
        myTableView.snp.makeConstraints {
            $0.right.bottom.left.top.equalToSuperview()
//        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight))
        }
//
//
//        warningNextView.snp.makeConstraints {
//            //            $0.right.bottom.equalToSuperview()
//            $0.centerX.equalToSuperview()
//            $0.centerY.equalToSuperview().multipliedBy(0.7)
//            $0.width.equalTo(buttonSize.width)
//            $0.height.equalTo(buttonSize.height)
//            //            $0.left.equalTo(self.snp.centerX)
//        }
//
//
//
//
    }
}



