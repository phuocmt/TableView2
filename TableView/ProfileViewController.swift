//
//  ProfileViewController.swift
//  TableView
//
//  Created by AST-iMac-0015 on 6/28/16.
//  Copyright © 2016 AST-iMac-0015. All rights reserved.
//

import UIKit

/*protocol fillDataDelegate: NSObjectProtocol {
    func backWithName(text: String) {
         self.nameField
    }
}*/

class ProfileViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var jobField: UITextField!
    
    var nameOfName: String!
    var nameOfJob: String!
    var icon: Icon!
  

    @IBAction func okButton(sender: UIButton) {
        icon.iconTitle = nameField.text!
        icon.iconSubTitle = jobField.text!
        self.navigationController?.popViewControllerAnimated(true)
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
        nameField.text = icon.iconTitle
        jobField.text = icon.iconSubTitle
        profileImage.image = UIImage(named: icon.iconImageName)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
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
