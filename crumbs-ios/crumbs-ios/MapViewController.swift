//
//  SecondViewController.swift
//  crumbs-ios
//
//  Created by Christopher Trevino on 2/11/15.
//  Copyright (c) 2015 Christopher Trevino. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation;


class MapViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mainMap: MKMapView!
    @IBOutlet weak var addCrumbBtn: UIBarButtonItem!
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
//         println("magic?")
        // Do any additional setup after loading the view, typically from a nib.
        locationManager.requestWhenInUseAuthorization();
//        CLLocationManager.requestAlwaysAuthorizat
        if CLLocationManager.locationServicesEnabled(){
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
            
        }
        else{
            println("Location service disabled");
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        //call this function if position updated
        var locValue:CLLocationCoordinate2D = manager.location.coordinate
        println("locations = \(locValue.latitude) \(locValue.longitude)")
        //        let sfGiantsStadiumLocation = CLLocationCoordinate2D(latitude: 37.783748, longitude: -122.409046)
        //set a span to be used by the MKCoordinateRegion structure
        let currentLocation = CLLocationCoordinate2D(latitude: locValue.latitude, longitude: locValue.longitude)
        var span = MKCoordinateSpanMake(0.01, 0.01)
        var coordinateRegion = MKCoordinateRegion(center: currentLocation, span: span)
        
        mainMap.setRegion(coordinateRegion, animated: true)
    }


    @IBAction func clickAddCrumb(sender: AnyObject) {
        println("clicke")
    }
}

