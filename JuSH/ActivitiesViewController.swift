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
        let activity = activitiesList[indexPath.row]
        cell.userNameLabel?.text = "with " + activity.user_name
        cell.actDescription?.text = activity.description
        cell.whereWhenLabel?.text = activity.date_time  + ", " + activity.venue_name
        cell.userPictureView.image = UIImage(named: "user_" + activity.user_name )
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        // selectedActivityInTable = activitiesList[indexPath.row]
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        var path = self.activitiesTableView.indexPathForSelectedRow()
        let detailsView:ActivityDetailsViewController = segue.destinationViewController as! ActivityDetailsViewController
        detailsView.selectedActivity = activitiesList[path!.row]
    }
    

}
