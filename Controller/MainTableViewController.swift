//
//  MainTableViewController.swift
//  edit table row
//
//  Created by Tammy Le on 10/9/18.
//  Copyright © 2018 Tammy Le. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    var listingDictionary = [
        "location" : [
            "9705 W Ownby, Spokane, WA",
            "26 Executive Cir, Irvine, CA",
            "3115 W Hoffman, Spokane, WA",
            "24 Main St, Newport Beach, CA",
            "4 Park Plaza, Irvine, CA"
        ],
        "listPrice" : [
            "$400k",
            "$500k",
            "$300k",
            "$650k",
            "$450k"
        ],
        "closePrice" : [
            "$300k",
            "$550k",
            "$300k",
            "$650k",
            "$400k"
        ],
        "mls" : [
            201718549,
            130341854,
            440171854,
            500171855,
            340177758,
        ],
        "grossIncome" : [
            "$235",
            "$450",
            "$675",
            "$200",
            "$600",
        ],
        "listDate" : [
            "01/02/2018",
            "02/05/2018",
            "02/05/2017",
            "02/10/2017",
            "02/05/2018"
        ],
        "closeDate" : [
            "03/24/2011",
            "02/20/2011",
            "03/20/2017",
            "03/20/2016",
            "03/20/2017",
        ]
    ]
    
    var listingNumber : Int = 0
    
    @IBAction func saveToMainViewController (segue: UIStoryboardSegue) {
        let detailVC = segue.source as! DetailTableViewController
        
        let index = detailVC.index
        
        let editLocation = detailVC.editedLocation
        let editPrice = detailVC.editedPrice
        let editClosePrice = detailVC.editedCloseprice
        let editMLS = detailVC.editedMLS
        let editedGrossIncome = detailVC.editedGrossIncome
        let editedListDate = detailVC.editedListDate
        let editedcloseDate = detailVC.editedcloseDate
        
        listingDictionary["location"]![index!] = editLocation!
        listingDictionary["listPrice"]![index!] = editPrice!
        listingDictionary["closePrice"]![index!] = editClosePrice!
        listingDictionary["mls"]![index!] = editMLS!
        listingDictionary["grossIncome"]![index!] = editedGrossIncome!
        listingDictionary["listDate"]![index!] = editedListDate!
        listingDictionary["closeDate"]![index!] = editedcloseDate!

        tableView.reloadData()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem

    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listingDictionary["location"]!.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)

        cell.textLabel?.text = listingDictionary["location"]![indexPath.row] as? String
       

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "edit" {
            let path = tableView.indexPathForSelectedRow
            
            let detailVC = segue.destination as! DetailTableViewController
            
            detailVC.index = path?.row
            detailVC.locationArray = (listingDictionary["location"] as! [String])
            detailVC.priceArray = (listingDictionary["listPrice"] as! [String])
            detailVC.closePriceArray = (listingDictionary["closePrice"] as! [String])
            detailVC.mlsArray = (listingDictionary["mls"] as! [Int])
            detailVC.grossIncomeArray = (listingDictionary["grossIncome"] as! [String])
            detailVC.listDateArray = (listingDictionary["listDate"] as! [String])
            detailVC.closeDateArray = (listingDictionary["closeDate"] as! [String])
            
        }
        
    }
    

}
