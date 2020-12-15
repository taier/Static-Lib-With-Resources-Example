//
//  StaticLibViewController.swift
//  StaticLib
//
//  Created by Deniss Kaibagarovs on 15/12/2020.
//

import UIKit

public class StaticLibViewController: UIViewController {
    
    @IBOutlet weak var iboImageView: UIImageView!
    
    public init() {
        let nibName = String(describing: type(of: self))
        super.init(nibName: nibName, bundle: Bundle.staticBundle)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.iboImageView.image = UIImage(named: "image", in: Bundle.staticBundle, with: nil)
    }
}

extension Bundle {
    static func getBundle(bundleName: String) -> Bundle? {
        var resourceBundle: Bundle?
        for includedBundles in Bundle.allBundles {
            if let resourceBundlePath = includedBundles.path(forResource: bundleName, ofType: "bundle") {
                resourceBundle = Bundle(path: resourceBundlePath)
                break
            }
        }
        return resourceBundle
    }
    
    static let staticBundle = Bundle.getBundle(bundleName: "StaticLibResources")
}
