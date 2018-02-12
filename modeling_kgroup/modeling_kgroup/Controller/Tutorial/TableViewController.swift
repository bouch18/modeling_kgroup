//
//  TableViewController.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2018/01/25.
//  Copyright © 2018 Univ of the Ryukyu. All rights reserved.
//
import UIKit
import Material
import Then
//import SwiftyUserDefaults

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
//    var tableView = TableView()
//    fileprivate var tableView: TableView!
    private var myItems: NSArray = ["TEST1", "TEST2", "TEST3"]
    private var myTableView: UITableView!
//    fileprivate var toolbar: Toolbar!
    
//    override func loadView() {
//        self.view = tableView
//    }
    open override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.prepareTableToolbar()
//        self.prepareTableView()
//        self.prepareAction()
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        
        // Viewの高さと幅を取得する.
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        // TableViewの生成(Status barの高さをずらして表示).
        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight))
        
        // Cell名の登録をおこなう.
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        
        // DataSourceを自身に設定する.
        myTableView.dataSource = self
        
        // Delegateを自身に設定する.
        myTableView.delegate = self
        
        // Viewに追加する.
        self.view.addSubview(myTableView)

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    Cellが選択された際に呼び出される
    */
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Num: \(indexPath.row)")
        print("Value: \(myItems[indexPath.row])")
    }
    
    /*
     Cellの総数を返す.
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myItems.count
    }
    
    /*
     Cellに値を設定する
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 再利用するCellを取得する.
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        
        // Cellに値を設定する.
        cell.textLabel!.text = "\(myItems[indexPath.row])"
        
        return cell
    }


}

extension TableViewController {

}
