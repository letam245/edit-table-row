//
//  MainTableViewController.swift
//  edit table row
//
//  Created by Tammy Le on 10/9/18.
//  Copyright © 2018 Tammy Le. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
   
    var listingData : [Listing] = [
        Listing (
            location: "9705 W Ownby, Spokane, WA",
            listPrice: "$400k",
            mls: 201718549,
            grossIncome: "$235k",
            listDate: "01/02/2018",
            closeDate: "03/24/2011",
            closePrice: "$150k"
        ),
        
        Listing (
            location: "26 Executive Cir, Irvine, CA",
            listPrice: "$500k",
            mls: 130318549,
            grossIncome: "$450k",
            listDate: "02/05/2018",
            closeDate: "03/20/2011",
            closePrice: "$150k"
        ),
        Listing (
            location: "3115 W Hoffman, Spokane, WA",
            listPrice: "$450k",
            mls: 440178544,
            grossIncome: "$450k",
            listDate: "02/05/2017",
            closeDate: "03/20/2017",
            closePrice: "$550k"
        ),
        Listing (
            location: "24 Main St, Newport Beach, CA",
            listPrice: "$600k",
            mls: 500171850,
            grossIncome: "$550k",
            listDate: "02/10/2017",
            closeDate: "03/20/2016",
            closePrice: "$350k"
        ),
        Listing (
            location: "4 Park Plaza, Irvine, CA",
            listPrice: "$590k",
            mls: 340177759,
            grossIncome: "$730k",
            listDate: "02/05/2018",
            closeDate: "03/20/2017",
            closePrice: "$600k"
        )
    ]
    
    var pendingListingData : [Listing] = [
        Listing (
            location: "9705 W Ownby, Ohio, OH",
            listPrice: "$400k",
            mls: 201718549,
            grossIncome: "$235k",
            listDate: "01/02/2018",
            closeDate: "03/24/2011",
            closePrice: "$150k"
        ),
        
        Listing (
            location: "55 Executive Cir, Garden Grove, CA",
            listPrice: "$500k",
            mls: 130318549,
            grossIncome: "$450k",
            listDate: "02/05/2018",
            closeDate: "03/20/2011",
            closePrice: "$150k"
        ),
        Listing (
            location: "3115 W Hoffman, Spokane, WA",
            listPrice: "$450k",
            mls: 440178544,
            grossIncome: "$450k",
            listDate: "02/05/2017",
            closeDate: "03/20/2017",
            closePrice: "$550k"
        ),
        Listing (
            location: "24 Main St, Newport Beach, CA",
            listPrice: "$600k",
            mls: 500171850,
            grossIncome: "$550k",
            listDate: "02/10/2017",
            closeDate: "03/20/2016",
            closePrice: "$350k"
        ),
        Listing (
            location: "4 Park Plaza, Irvine, CA",
            listPrice: "$590k",
            mls: 340177759,
            grossIncome: "$730k",
            listDate: "02/05/2018",
            closeDate: "03/20/2017",
            closePrice: "$600k"
        )
    ]
    
    
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
        

        listingData[index!].location = editLocation!
        listingData[index!].listPrice = editPrice!
        listingData[index!].closePrice = editClosePrice!
        listingData[index!].mls = editMLS!
        listingData[index!].grossIncome = editedGrossIncome!
        listingData[index!].listDate = editedListDate!
        listingData[index!].closeDate = editedcloseDate!
        
        tableView.reloadData()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listingData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)

        //cell.textLabel?.text = listingDictionary["location"]![indexPath.row] as? String
    
        cell.textLabel?.text = listingData[indexPath.row].location

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
            detailVC.location = listingData[(path?.row)!].location
            detailVC.listPrice = listingData[(path?.row)!].listPrice
            detailVC.closePrice = listingData[(path?.row)!].closePrice
            detailVC.mls = listingData[(path?.row)!].mls
            detailVC.grossincome = listingData[(path?.row)!].grossIncome
            detailVC.listdate = listingData[(path?.row)!].listDate
            detailVC.closedate = listingData[(path?.row)!].closeDate
            
        }
        
    }
    

}
