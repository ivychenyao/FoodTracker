//
//  MealTableViewController.swift
//  FoodTracker
//
//  Created by Ivy Chenyao on 10/25/16.
//  Copyright © 2016 Ivy Chenyao. All rights reserved.
//

import UIKit

class MealTableViewController: UITableViewController {

    let cellIdentifier = "MealTableViewCell"
    
    // MARK: Properties
    var meals = [Meal] ()
    
    func loadSampleMeals() {
        let meal1 = Meal(name: "Chick-fil-A Sandwich", photo: #imageLiteral(resourceName: "Chick-fil-A-Sandwich"), rating: 5)
        
        let meal2 = Meal(name: "Pizza", photo: #imageLiteral(resourceName: "Pizza"), rating: 0)
        
        let meal3 = Meal(name: "PhoNoodleBowl", photo: #imageLiteral(resourceName: "PhoNoodleBowl"), rating: 3)
        
        let meal4 = Meal(name: "Pancakes", photo: #imageLiteral(resourceName: "Pancakes"), rating: 4)
        
        let meal5 = Meal(name: "Pasta", photo: #imageLiteral(resourceName: "Pasta"), rating: 2)
        
        meals += [meal1!,meal2!,meal3!,meal4!,meal5!]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        loadSampleMeals()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MealTableViewCell
        
        let meal = meals[indexPath.row]
        cell.mealLabel.text = meal.name
        
        cell.mealImageView.image = meal.photo
        
        cell.ratingControl.rating = meal.rating
        
        // Configure the cell...

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
        // Get the new view controller using segue.destinationViewController.
        let vc = segue.destination as! ViewController
        // Pass the selected object to the new view controller.
        let selectedIndex = self.tableView.indexPathForSelectedRow?.row
        let meal = meals[selectedIndex!]
        vc.meal = meal
     
        
        
    }
    

}
