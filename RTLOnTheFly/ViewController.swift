//
//  ViewController.swift
//  RTLOnTheFly
//
//  Created by 正翔  沈 on 24/02/2017.
//  Copyright © 2017 Sayalic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setRTL(_ sender: UIButton) {
        UIView.appearance().semanticContentAttribute = .forceRightToLeft
        UINavigationBar.appearance().semanticContentAttribute = .forceRightToLeft
        if let vc = storyboard?.instantiateViewController(withIdentifier: "root") {
            UIApplication.shared.keyWindow?.rootViewController = vc
        }
    }

    @IBAction func setLTR(_ sender: UIButton) {
        UIView.appearance().semanticContentAttribute = .forceLeftToRight
        UINavigationBar.appearance().semanticContentAttribute = .forceLeftToRight
        if let vc = storyboard?.instantiateViewController(withIdentifier: "root") {
            UIApplication.shared.keyWindow?.rootViewController = vc
        }
    }
}

