//
//  ViewController.swift
//  CustomAnnotationPin
//
//  Created by issd on 10/03/2019.
//  Copyright © 2019 issd. All rights reserved.
//

import UIKit
import MapKit


class customPin: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(pinTitle: String, pinSub: String, location: CLLocationCoordinate2D) {
        self.title=pinTitle
        self.subtitle=pinSub
        self.coordinate=location
    }
}


class ViewController: UIViewController, MKMapViewDelegate{
    
@IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let location = CLLocationCoordinate2DMake( 51.4416, 5.4697)
        let region = MKCoordinateRegion(center: location, span: MKCoordinateSpan(latitudeDelta: 0.020, longitudeDelta: 0.020))
        self.mapView.setRegion(region, animated: true)
        
        let pin = customPin(pinTitle: "Eindhoven", pinSub: "Netherlands", location: location)
        self.mapView.addAnnotation(pin)
        self.mapView.delegate=self
    }
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation
        {
            return nil
        }
        
        let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customannotation")
        annotationView.image = UIImage(named: "pin")
        annotationView.canShowCallout = true
        return annotationView
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        print("annotation title == \(String(describing: view.annotation?.title!))")
    }
}

