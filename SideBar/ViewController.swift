//
//  ViewController.swift
//  SideBar
//
//  Created by kelly on 2014/11/27.
//  Copyright (c) 2014年 kelly. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,SideBarDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var sideBar: SideBar = SideBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView.image = UIImage(named: "image2")
        sideBar = SideBar(sourceView: self.view , menuItems: ["first item","second item","funny item","anther item"])
        sideBar.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sideBarDidSelectButtonAtIndex(index: Int) {
        if index == 0 {
            imageView.backgroundColor = UIColor.redColor()
            imageView.image = nil
        } else if index == 1 {
            imageView.backgroundColor = UIColor.clearColor()
            imageView.image = UIImage(named: "image2")
        }
    }

}

