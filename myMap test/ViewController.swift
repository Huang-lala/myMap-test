//
//  ViewController.swift
//  myMap test
//
//  Created by NDHU_CSIE on 2020/12/3.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet var mapView: MKMapView!
    
    let centerLoction = CLLocationCoordinate2D(latitude: 40.689247, longitude: -74.044502)
    
    @IBAction func selectTuype(_ sender: UISegmentedControl){
        switch sender.selectedSegmentIndex{
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .satellite
        case 2:
            mapView.mapType = .satelliteFlyover
            let myCamera = MKMapCamera(lookingAtCenter: centerLoction, fromDistance: 500.0, pitch: 70.0, heading: 0.0)
            mapView.setCamera(myCamera, animated: true)
        default:
            break
    }
    
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        initMap()
        // Do any additional setup after loading the view.
    }
        
        func initMap(){
            let region = MKCoordinateRegion(center: centerLoction, latitudinalMeters: 500.0, longitudinalMeters: 500.0)
            mapView.setRegion(region,animated: false)

}


}
