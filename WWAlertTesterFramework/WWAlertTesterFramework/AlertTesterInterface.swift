//
//  AlertTesterInterface.swift
//  WWAlertTesterFramework
//
//  Created by Wade Weitzel on 1/29/24.
//

import Foundation
import AlertController

public class AlertTesterInterface {
    public init() {
    }
    
    public func displayAlert() {
        let alert = UIAlertController.alert()
        alert.setTitle("✅ Success", color: .green)
        alert.setMessage("Your message has been sent")
        alert.addAction(
            title: "Send more",
            systemIcon: "envelope.fill",
            color: .green,
            leftAligment: true
        ) {}
        alert.addAction(
            title: "Delete message",
            systemIcon: "trash.fill",
            color: .red,
            leftAligment: true
        ) {}
        alert.addOkAction()
        
        if let topMost = getTopMostViewController() {
            topMost.present(alert, animated: true)
        }
    }
    
    func getTopMostViewController() -> UIViewController? {
        var topMostViewController = UIApplication.shared.keyWindow?.rootViewController
        
        while let presentedViewController = topMostViewController?.presentedViewController {
            topMostViewController = presentedViewController
        }
        
        return topMostViewController
    }
}
