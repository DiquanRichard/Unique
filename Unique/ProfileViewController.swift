//
//  ProfileViewController.swift
//  Unique
//
//  Created by StreetCode Academy on 5/22/17.
//
//

import UIKit

class ProfileViewController: UIViewController,UITextViewDelegate  {

    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var Status: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Status.returnKeyType = UIReturnKeyType.done
        Status.delegate=self
        // Do any additional setup after loading the view.
        Button.layer.cornerRadius = 5
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n"){
           ButtonClicked(self)
            return false
        }
        return true
    }
    
    @IBAction func ButtonClicked(_ sender: Any) {
        Status.resignFirstResponder()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
