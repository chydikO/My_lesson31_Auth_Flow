//
//  NavigationController.swift
//  My_lesson31_Auth_Flow
//
//  Created by OlegChudnovskiy on 13.07.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return topViewController?.supportedInterfaceOrientations ?? .all
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return topViewController?.preferredStatusBarStyle ?? .lightContent
    }
}
