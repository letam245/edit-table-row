//
//  FirstViewController.swift
//  edit table row
//
//  Created by Tammy Le on 10/11/18.
//  Copyright © 2018 Tammy Le. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func segmentSwitch(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            let vc = self.storyboard!.instantiateViewController(withIdentifier: "activeTable") as! MainTableViewController
            self.present(vc, animated: true, completion: nil)
        }

    }
    @IBAction func unwindToMainViewController(segue: UIStoryboardSegue) {
        
    }

}
