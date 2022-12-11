//
//  NewEntryViewController.swift
//  JournalApp
//
//  Created by ITHS on 2022-12-11.
//  Copyright © 2022 ITHS. All rights reserved.
//

import UIKit

class NewEntryViewController: UIViewController {

    
    @IBOutlet weak var entryTextView: UITextView!
    

    var journal : Journal?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func save(_ sender: UIBarButtonItem) {
        
        if let entryText =  entryTextView.text {
            let entry = JournalEntry(content: entryText)
            journal?.add(entry: entry)
            dismiss(animated: true)
            
        }
    }
    
}
