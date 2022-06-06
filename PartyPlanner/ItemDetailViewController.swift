//
//  ItemDetailViewController.swift
//  PartyPlanner
//
//  Created by Samuel Pena on 6/6/22.
//  Copyright © 2022 Samuel Pena. All rights reserved.
//

import UIKit

class ItemDetailViewController: UIViewController {

    @IBOutlet weak var partyItemField: UITextField!
    @IBOutlet weak var personResponsibleField: UITextField!
    var partyItem = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        partyItemField.text = partyItem
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        partyItem = partyItemField.text!
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
