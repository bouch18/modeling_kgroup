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

class TableViewController: UIViewController {
    
//    var tableView = TableView()
    fileprivate var tableView: TableView!
    fileprivate var toolbar: Toolbar!
    
//    override func loadView() {
//        self.view = tableView
//    }
    open override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.prepareTableToolbar()
//        self.prepareTableView()
//        self.prepareAction()
        
    }
}

extension TableViewController {
//    fileprivate func prepareMenuButton() {
//        closeButton = IconButton(image: Icon.cm.close)
//        closeButton.tintColor = .white
//        closeButton.addTarget(self, action: #selector(handleCloseButton), for: .touchUpInside)
//    }
    fileprivate func prepareToolbar() {
        guard let tc = toolbarController else {
            return
        }
        
        tc.toolbar.title  = "Data Select"
        tc.toolbar.detail = "choice data"
    }
}

//extension TableViewController{
//    fileprivate func prepareTableView() {
//        let displayWidth: CGFloat = self.view.frame.width
//        let displayHeight: CGFloat = self.view.frame.height - 150
//        tableView = TableView()
//        tableView.height = self.view.frame.height - 150
//        tableView.backgroundColor = UIColor(red:1,green: 1, blue: 1, alpha: 0.45)
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.sectionHeaderHeight = 1
//        tableView.rowHeight = 90
//        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
//    }

//    fileprivate func prepareCard() {
//        Card = Card()
//        Card.toolbar = toolbar
//        card.backgroundColor = UIcolor.gray
//        card.contentView = tableView
//        view.layout(card).horizontally(left: 20, right: 20).center()
//    }
//}

//extension TableViewController: TableViewDelegate,TableViewDataSource {
//    @objc
//    open func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    @objc
//    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
////        return dataSourceItems.count
//        return 1
//    }
//    @objc
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
//
////        guard let data = dataSourceItems[indexPath.row].data as? DetailItem else {
////            return cell
////        }
//
//        // 2017.08.17 12:34
////        let formatter = DateFormatter()
////        formatter.dateFormat = "yyyy.MM.dd HH:mm"
////        cell.textLabel!.text = formatter.string(from: data.file_modification_date as Date)
//        cell.textLabel!.text = "test"
//
//        cell.detailTextLabel!.text = "test band"
//
//        // セルの背景色はなし
//        cell.backgroundColor = UIColor.gray
//        cell.textLabel?.textColor = .white
//        cell.detailTextLabel?.textColor = UIColor.white
//        //        cell.textLabel?.font = UIFont.systemFontOfSize(20)
//        cell.textLabel?.font = UIFont.systemFont(ofSize: 20)
//        cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 15)
//
//        return cell
//    }
//    @objc
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////        guard let data = dataSourceItems[indexPath.row].data as? DetailItem else {
////            return
////        }
//
////        self.tmp_select_item_id = data.measurement_id;
////        self.selected_item_id = self.tmp_select_item_id;
//        self.dismiss(animated: true, completion: nil)
//
//        /*
//         self.showBluetoothData(data.peripheral)
//         //self.showNotifyData(data.peripheral)
//
//         let alert = SCLAlertView()
//         let connected  = data.peripheral.isConnected
//         let displayName = MeasureDataModel.getMIWDeviceName(peripheral: data.peripheral)
//
//         if (connected) {
//         _ = alert.addButton("はい") {
//         _ = data.peripheral.cancelConnection().subscribe(onNext: { (peripheral) in
//         ArbletBluetoothModel.removeConnectedUUID(peripheral.identifier.uuidString)
//         self.tableView.reloadData()
//         _ = SCLAlertView().showSuccess("解除しました。", subTitle: "", closeButtonTitle: "OK")
//         }, onError: { (error) in
//         _ = SCLAlertView().showError("失敗", subTitle: "解除に失敗しました。", closeButtonTitle: "OK")
//         })
//         }
//         _ = alert.showWarning("ペアリングの解除", subTitle: displayName + "とペアリングを解除しますか？", closeButtonTitle: "キャンセル")
//         } else {
//         _ = alert.addButton("はい") {
//         _ = data.peripheral.connect().subscribe(onNext: { (peripheral) in
//         self.pairingPeripheral(peripheral)
//
//         }, onError: { (error) in
//         _ = SCLAlertView().showError("失敗", subTitle: "ペアリングに失敗しました。", closeButtonTitle: "OK")
//         })
//         }
//         _ = alert.showNotice("ペアリングの実行", subTitle: displayName + "とペアリングを行いますか？", closeButtonTitle: "キャンセル")
//         }
//         */
//    }
//
//
//}
//
