//
//  StartController.swift
//  My_lesson31_Auth_Flow
//
//  Created by OlegChudnovskiy on 13.07.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class StartController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        check()
        
    }
    
    // нужно ли показывать окно tutorial
    private func check() {
        if AppSettings.shared.isSwosedTutuorial {
            // open Auth or Maine
            if AppSettings.shared.isUserLogged {
                openMain()
            } else {
                openAuth()
            }
        } else  {
            // open tutorial
            openTutorial()
        }
    }
    
    private func openTutorial() {
        setRootViewControllerFrom(storyboard: "Tutorial")
    }
    
    private func openAuth() {
        setRootViewControllerFrom(storyboard: "Auth")
        
    }
    
    private func openMain() {
        setRootViewControllerFrom(storyboard: "Main")
    }
}
