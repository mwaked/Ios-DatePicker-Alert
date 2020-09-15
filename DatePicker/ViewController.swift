//
//  ViewController.swift
//  DatePicker
//
//  Created by Mahmoud Waked on 9/15/20.
//  Copyright © 2020 BIM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var lablePreview: UILabel!
    
    var selectedDate = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lablePreview.numberOfLines = 3

        selectedDate = datePicker.date.description(with: Locale(identifier: "ar"))
        lablePreview.text = selectedDate
        
    }
    
    @IBAction func onPreviewDataclick(_ sender: Any) {
        showAlert()
    }
    
    @IBAction func onDateChangeListener(_ sender: Any) {
        
        selectedDate = datePicker.date.description(with: Locale(identifier: "ar"))        
        lablePreview.text = selectedDate
        
    }
    
    
    private func showAlert(){
        let alert = UIAlertController(title: "Date Preview", message: selectedDate, preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }

}
    


