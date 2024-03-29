//
//  SidebarMEnu.swift
//  SlidebarMenu
//
//  Created by Fomin Mykola on 8/3/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

extension UIViewController {
    func addSideBarMenu(leftMenuButton: UIBarButtonItem?, rightMenuButton: UIBarButtonItem? = nil) {
        
        if revealViewController() != nil {
            if let menuButton = leftMenuButton {
                menuButton.target = revealViewController()
                menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            }
            
            if let extraButton = rightMenuButton {
                revealViewController().rightViewRevealWidth = 150
                extraButton.target = revealViewController()
                extraButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            }
        view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
}
