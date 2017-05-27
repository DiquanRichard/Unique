//
//  ProfileViewController.swift
//  Unique
//
//  Created by StreetCode Academy on 5/22/17.
//
//

import UIKit

class ProfileViewController: UIViewController,UITextViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {

    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var Status: UITextView!
    
    @IBOutlet weak var chooseImage: UIButton!
    let imagePicker = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Status.returnKeyType = UIReturnKeyType.done
        Status.delegate=self
        
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        // Do any additional setup after loading the view.
        Button.layer.cornerRadius = 5
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func imgClicked(_ sender: Any) {
        

        
        present(imagePicker,animated:true,completion:nil)
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
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            chooseImage.setBackgroundImage(pickedImage, for: UIControlState.normal)
        }
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)

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
