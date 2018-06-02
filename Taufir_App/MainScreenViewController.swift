//
//  MainScreenViewController.swift
//  Taufir_App
//
//  Created by Saugaat Allabadi on 2/9/17.
//  Copyright © 2017 Taufir Inc. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var firstVCtext:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //welcomeLabel.text = "Welcome " + (firstVCtext)!
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
