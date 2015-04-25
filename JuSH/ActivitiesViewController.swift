//
//  ActivitiesViewController.swift
//  JuSH
//
//  Created by Alice Q Wong on 4/24/15.
//  Copyright (c) 2015 Alice Q Wong. All rights reserved.
//

import UIKit

class ActivitiesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var activitiesTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

    //    self.activitiesTableView.registerClass(ActivityCard.self, forCellReuseIdentifier: "activityCard")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activitiesList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:ActivityCard = self.activitiesTableView.dequeueReusableCellWithIdentifier("activityCard") as! ActivityCard
        let activity = activitiesList[indexPath.item]
        cell.userNameLabel?.text = "with " + activity.user_name
        cell.actDescription?.text = activity.description
        cell.whereWhenLabel?.text = activity.date_time  + ", " + activity.venue_name
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
