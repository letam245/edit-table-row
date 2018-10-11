//
//  DetailTableViewController.swift
//  edit table row
//
//  Created by Tammy Le on 10/9/18.
//  Copyright © 2018 Tammy Le. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {

    @IBOutlet weak var editLocationTextField: UITextField!
    @IBOutlet weak var editPriceTextField: UITextField!
    @IBOutlet weak var editedClosePrice: UITextField!
    @IBOutlet weak var mlsID: UITextField!
    @IBOutlet weak var grossIncome: UITextField!
    @IBOutlet weak var listDate: UITextField!
    @IBOutlet weak var closeDate: UITextField!
    
    var index: Int?
    
    var locationArray : [String]!
    var editedLocation : String?
    
    var priceArray : [String]!
    var editedPrice: String?
    
    var closePriceArray : [String]!
    var editedCloseprice: String?
    
    var mlsArray : [Int]!
    var editedMLS: Int?
    
    var grossIncomeArray : [String]!
    var editedGrossIncome: String?
    
    var listDateArray : [String]!
    var editedListDate: String?
    
    var closeDateArray : [String]!
    var editedcloseDate: String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        editLocationTextField.text = locationArray[index!]
        editPriceTextField.text = priceArray[index!]
        editedClosePrice.text = closePriceArray[index!]
        mlsID.text = "\(mlsArray![index!])"
        grossIncome.text = grossIncomeArray[index!]
        listDate.text = listDateArray[index!]
        closeDate.text = closeDateArray[index!]
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if indexPath.section == 0 && indexPath.row == 0 {
//            editLocationTextField.becomeFirstResponder()
//        }
//        else if indexPath.section == 1 &&  indexPath.row == 0 {
//
//            editPriceTextField.becomeFirstResponder()
//        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
    
    /*
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    */

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
        if segue.identifier == "save" {
            editedLocation = editLocationTextField.text
            editedPrice = editPriceTextField.text
            editedCloseprice = editedClosePrice.text
            editedMLS = Int(mlsID.text!)
            editedGrossIncome = grossIncome.text
            editedListDate = listDate.text
            editedcloseDate = closeDate.text
        }
    }
 

}