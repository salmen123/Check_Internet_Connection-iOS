//
//  ViewController.swift
//  Check_Internet_Connection-iOS
//
//  Created by Med Salmen Saadi on 6/5/18.
//  Copyright © 2018 Med Salmen Saadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var reachability:Reachability?

    @IBOutlet weak var lb_Status: UILabel!
    @IBOutlet weak var lb_Type: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func bu_Check(_ sender: Any) {
        
        self.reachability = Reachability.init()
        
        //Check Status
        if ((self.reachability!.connection) != .none) {
            print("Internet Available")
            lb_Status.text = "Internet Available"
        } else {
            print("Internet Not Available")
            lb_Status.text = "Internet Not Available"
        }
        
        //Check Type of Connection
        switch self.reachability!.connection {
        case .wifi:
            print("reachable via WI-FI")
            lb_Type.text = "reachable via WI-FI"
        case .cellular:
            print("reachable via cellular")
            lb_Type.text = "reachable via cellular"
        case .none:
            print("Network not reachable")
            lb_Type.text = "Network not reachable"
        }
    }
    
}

