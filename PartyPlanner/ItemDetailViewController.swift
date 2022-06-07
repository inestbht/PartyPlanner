//
//  ItemDetailViewController.swift
//  PartyPlanner
//
//  Created by Samuel Pena on 6/6/22.
//  Copyright © 2022 Samuel Pena. All rights reserved.
//

import UIKit

class ItemDetailViewController: UIViewController {
    
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    @IBOutlet weak var partyItemField: UITextField!
    @IBOutlet weak var personResponsibleField: UITextField!
    var partyItem = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        partyItemField.text = partyItem
        partyItemField.becomeFirstResponder()
        enableDisableSave()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        partyItem = partyItemField.text!
    }
    
    func enableDisableSave() {
        
        let blankString = String(repeating: " ", count: (partyItemField.text?.count)!)
        
        if partyItemField.text == blankString {
            saveBarButton.isEnabled = false
        } else {
            saveBarButton.isEnabled = true
        }
        
        // saveBarButton.isEnabled = ( (partyItemField.text?.isEmpty)! ? false : true)
    }
    
    @IBAction func partyItemFieldChanged(_ sender: UITextField) {
        enableDisableSave()
    }
    
    @IBAction func cancelBarButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    
}
