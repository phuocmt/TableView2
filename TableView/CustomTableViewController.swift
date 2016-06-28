//
//  CustomTableViewController.swift
//  TableView
//
//  Created by AST-iMac-0015 on 6/27/16.
//  Copyright © 2016 AST-iMac-0015. All rights reserved.
//

import UIKit


class CustomTableViewController: UIViewController {
  
    
    
    
    @IBOutlet var tableView: UITableView!
    let manager = IconDataSource()
    var icons = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerNib(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.icons = manager.icons


        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

extension CustomTableViewController : UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.icons.count
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let icon = self.icons[indexPath.row] as? Icon
        let cell:CustomTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("CustomTableViewCell") as! CustomTableViewCell
        cell.titleLabel.text = icon?.iconTitle
        cell.subTitleLabel.text = icon?.iconSubTitle
        cell.iconImageView.image = UIImage(named: (icon?.iconImageName)!)
        return cell
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let profileViewController = ProfileViewController()

        profileViewController.icon = (self.icons[indexPath.row] as? Icon)
        
        self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
        self.navigationController?.pushViewController(profileViewController, animated: true)
    }
  
}