//
//  ViewController.swift
//  StaticLibWithResources
//
//  Created by Deniss Kaibagarovs on 15/12/2020.
//

import UIKit
import StaticLib

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let controllerFromStaticLib = StaticLibViewController()
        self.present(controllerFromStaticLib, animated: false, completion: nil)
    }
}
