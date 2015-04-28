//
//  PlansTableViewController.swift
//  JuSH
//
//  Created by Alice Q Wong on 4/27/15.
//  Copyright (c) 2015 Alice Q Wong. All rights reserved.
//

import UIKit

class PlansTableViewController: UITableViewController {
    
    var selectedPlan : Plans?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCurrentPlansInTheMaking.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("notificationCell", forIndexPath: indexPath) as! NotificationCell
        
        var plan = myCurrentPlansInTheMaking[indexPath.row]
        cell.setContent(plan.noteType, title: plan.planDate + " " + plan.planTime, subtitle: plan.message, userFirstName: plan.userFirstName)

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedPlan = myCurrentPlansInTheMaking[indexPath.row]
        
        let optionMenu = UIAlertController(title: nil, message: "What to do?", preferredStyle: .ActionSheet)
        
        let nothingAction = UIAlertAction(title: "Nothing", style: .Cancel){ (action) in
            
        }
        optionMenu.addAction(nothingAction)
        
        let reschdeuleAction = UIAlertAction(title: "Reschedule", style: UIAlertActionStyle.Default){ (action) in
           self.goToScheduler()
        }
        if(selectedPlan?.noteType == NotificationType.GOOD_TIME){
            let confirmAction = UIAlertAction(title: "Confirm Plan", style: UIAlertActionStyle.Default){ (action) in
                let currentCell : NotificationCell = tableView.cellForRowAtIndexPath(indexPath) as! NotificationCell
                currentCell.labelDateStatus.text = "CONFIRMED"
            }
            optionMenu.addAction(confirmAction)
             optionMenu.addAction(reschdeuleAction)
          
            
        } else {
            let cancelAction = UIAlertAction(title: "Cancel Plan", style: UIAlertActionStyle.Default){ (action) in
                let currentCell : NotificationCell = tableView.cellForRowAtIndexPath(indexPath) as! NotificationCell
                currentCell.labelDateStatus.text = "CANCELLED"
            }
            optionMenu.addAction(reschdeuleAction)
            optionMenu.addAction(cancelAction)
        }
        
         self.presentViewController(optionMenu, animated: true, completion: nil)
    }

    func goToScheduler(){
         performSegueWithIdentifier("Go2Scheduler", sender: self)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        let scheduleVC : SchedulerController = segue.destinationViewController as! SchedulerController
        scheduleVC.dateName = selectedPlan?.planDate
        var suffix = selectedPlan?.planTime
        scheduleVC.titleName = "Choose another time NOT " + suffix!
    }
}
