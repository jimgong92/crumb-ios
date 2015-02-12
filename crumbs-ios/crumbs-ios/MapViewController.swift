//
//  SecondViewController.swift
//  crumbs-ios
//
//  Created by Christopher Trevino on 2/11/15.
//  Copyright (c) 2015 Christopher Trevino. All rights reserved.
//

import UIKit
import MapKit


class MapViewController: UIViewController {
    @IBOutlet weak var mainMap: MKMapView!
    
    @IBOutlet weak var addCrumbBtn: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func clickAddCrumb(sender: AnyObject) {
        println("clicke")
    }
}

