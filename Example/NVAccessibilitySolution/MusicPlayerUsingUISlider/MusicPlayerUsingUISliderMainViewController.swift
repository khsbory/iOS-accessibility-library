//
//  MusicPlayerUsingUISliderMainViewController.swift
//  IosAccessibilityDemos
//
//  Copyright © 2021 Jeonggyu Park. All rights reserved.
//

import UIKit

class MusicPlayerUsingUISliderMainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setScreenTitle()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    private func setScreenTitle() {
        self.title = "UISlider 뮤직 플레이어 데모"
    }
    
    @IBAction func launchSeparateFocusWithoutAccessibility(_ sender: Any) {
        Commons.isAccessibilityApplied = false
        showScreenOnOtherStoryboard(storyboardName: "MusicPlayerUsingUISlider", viewControllerStoryboardId: "MusicPlayerUsingUISliderDemo")
        
    }
    
    @IBAction func launchSeparateFocusWithAccessibility(_ sender: Any) {
        Commons.isAccessibilityApplied = true
        showScreenOnOtherStoryboard(storyboardName: "MusicPlayerUsingUISlider", viewControllerStoryboardId: "MusicPlayerUsingUISliderDemo")
        
    }
    
    private func showScreenOnOtherStoryboard(storyboardName:String, viewControllerStoryboardId:String) {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: viewControllerStoryboardId)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
