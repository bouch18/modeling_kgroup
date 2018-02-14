//
//  WarningNextViewController.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/12/19.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

import UIKit
import Material
import Graph

class WarningNextViewController: UIViewController {
    
    var warningNextView = WarningNextView()
    
    override func loadView() {
        self.view = warningNextView
    }
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.prepareAction()
        
    }
    
    @objc func onClickMyButton(sender: UIButton){
        
        // 遷移するViewを定義する.
//        let myNextViewController: UIViewController = TableViewController()
        
        let appdel = AppDelegate()
        appdel.defaults.set(1, forKey: "int")

        
        SampleData.createSampleData()
        
        let graph = Graph()
        let search = Search<Entity>(graph: graph).for(types: "Category")
        
        var viewControllers = [PostsViewController]()
        
        for category in search.sync() {
            if let name = category["name"] as? String {
                viewControllers.append(PostsViewController(category: name))
            }
        }
//        var viewControllers = [PostsViewController]()
        
        let tabsController = AppTabsController(viewControllers: viewControllers)
        let toolbarController = AppToolbarController(rootViewController: tabsController)
        let menuController = AppFABMenuController(rootViewController: toolbarController)
        // アニメーションを設定する.
        //        mySecondViewController.modalTransitionStyle = .partialCurl
        // Viewの移動する.
        self.present(menuController, animated: true, completion: nil)
    }
    
}

extension WarningNextViewController {
    fileprivate func prepareAction() {
        
        self.warningNextView.nextButton.addTarget(self, action: #selector(self.onClickMyButton), for: .touchUpInside)
        
    }
}






