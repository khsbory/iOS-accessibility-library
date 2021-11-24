//
//  ReloadingButtonCollectionViewCell.swift
//  IosAccessibilityDemos
//
//  Created by suni on 2021/10/07.
//  Copyright © 2021 Jeonggyu Park. All rights reserved.
//

import UIKit
import NVAccessibilitySolution

class ReloadingButtonCollectionViewCell: NVAccessibilityCollectionViewCell {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var isSelect: Bool = false {
        didSet{
            self.backgroundColor = isSelect ? .lightGray : .white
            if Commons.isAccessibilityApplied {
                self.accessibilityTraits = isSelect ? [.notEnabled, .button, .selected] : [.button]
            }
        }
    }
    
    func initCell() {
        if Commons.isAccessibilityApplied {
            self.initAccessibility()
        }
    }
    
    func initAccessibility() {
        self.isAccessibilityElement = true
        
        self.backgroundColor = isSelect ? .lightGray : .white
        self.accessibilityTraits = isSelect ? [.notEnabled, .button, .selected] : [.button]
               
        if let text = numberLabel.text {
             self.accessibilityLabel = "\(text)"
        }
    }
}
