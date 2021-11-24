//
//  ReloadingTableViewMainViewController.swift
//  IosAccessibilityDemos
//
//  Created by suni on 2021/10/07.
//  Copyright © 2021 Jeonggyu Park. All rights reserved.
//

import UIKit

class ReloadingTableViewMainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setScreenTitle()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    private func setScreenTitle() {
        self.title = "테이블뷰 리로드 데모"
    }
    
    @IBAction func launchSeparateFocusWithoutAccessibility(_ sender: Any) {
        Commons.isAccessibilityApplied = false
        showScreenOnOtherStoryboard(storyboardName: "ReloadingTableView", viewControllerStoryboardId: "ReloadingTableViewDemo")
        
    }
    
    @IBAction func launchSeparateFocusWithAccessibility(_ sender: Any) {
        Commons.isAccessibilityApplied = true
        showScreenOnOtherStoryboard(storyboardName: "ReloadingTableView", viewControllerStoryboardId: "ReloadingTableViewDemo")
        
    }
    
    private func showScreenOnOtherStoryboard(storyboardName:String, viewControllerStoryboardId:String) {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: viewControllerStoryboardId)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
