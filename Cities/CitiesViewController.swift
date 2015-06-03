//
//  ViewController.swift
//  Cities
//
//  Created by Carola F on 01.06.15.
//  Copyright (c) 2015 Carola F. All rights reserved.
//

import UIKit

class CitiesViewController: UIViewController {
    
    var city: City?
    
    @IBOutlet weak var CityButton: UIButton!
    
    override func viewWillAppear(animated: Bool) {
        CityButton.setTitle(city?.name, forState: .Normal)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            switch identifier {
            case "showCityDetail":
                if let cityDetailViewController = segue.destinationViewController as? CityDetailViewController
                {
                  cityDetailViewController.city = self.city
                }
            default: break
            }
        }
    }
    
    @IBAction func unwindToCities(segue: UIStoryboardSegue){}
    
}

