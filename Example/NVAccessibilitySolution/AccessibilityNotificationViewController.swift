//
//  AccessibilityNotificationViewController.swift
//  NVAccessibilitySolution_Example
//
//  Created by suni on 2021/11/22.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import NVAccessibilitySolution

class AccessibilityNotificationViewController: UIViewController {
    
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var delayTimeTextField: UITextField!
    
    @IBAction func announceForAccessibilityTapped(_ sender: Any) {
        NVAccessibility.notificationPostDeadline = .now() + 2.0
        
        if let colorName = self.colorView.backgroundColor?.name {
            NVAccessibility.announceForAccessiblity(colorName)
        }
    }
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setBackgroundColor(.red)
        //        self.initAccessibility
    }
    
    //MARK: private func
    private func setBackgroundColor(_ color: UIColor) {
        self.colorView.backgroundColor = color
    }
    
}
extension UIColor {
    var name: String? {
        switch self {
        case UIColor.black: return "black"
        case UIColor.darkGray: return "darkGray"
        case UIColor.lightGray: return "lightGray"
        case UIColor.white: return "white"
        case UIColor.gray: return "gray"
        case UIColor.red: return "red"
        case UIColor.green: return "green"
        case UIColor.blue: return "blue"
        case UIColor.cyan: return "cyan"
        case UIColor.yellow: return "yellow"
        case UIColor.magenta: return "magenta"
        case UIColor.orange: return "orange"
        case UIColor.purple: return "purple"
        case UIColor.brown: return "brown"
        default: return nil
        }
    }
}
