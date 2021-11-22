//
//  NVAccessibility.swift
//  NVAccessibilitySolution
//
//  Created by suni on 2021/11/22.
//

import Foundation
import UIKit


// Default values
private let defualtNotificationPostDeadline: DispatchTime = DispatchTime.now() + 0.5

public struct NVAccessibility {
    
    
    // MARK: Public var
    
    // Notification
    public static var notificationPostDeadline: DispatchTime = defualtNotificationPostDeadline
    
    
    
    // MARK: Public func
    
    // Notification
    public static func announceForAccessiblity(_ argument: String) {
        DispatchQueue.main.asyncAfter(deadline: notificationPostDeadline) {
            UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, argument)
        }
    }
}
