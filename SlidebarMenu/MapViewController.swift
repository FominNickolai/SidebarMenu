//
//  MapViewController.swift
//  SlidebarMenu
//
//  Created by Simon Ng on 24/10/2016.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

    @IBOutlet var menuButton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addSideBarMenu(leftMenuButton: menuButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        print("MapViewController deinit")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
