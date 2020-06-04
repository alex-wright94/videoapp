//
//  ViewController.swift
//  videoapp
//
//  Created by Alex Wright on 5/21/20.
//  Copyright © 2020 Alex Wright. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var model  = Model()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
        
    }


}

