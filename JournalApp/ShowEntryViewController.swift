//
//  ShowEntryViewController.swift
//  JournalApp
//
//  Created by ITHS on 2022-12-11.
//  Copyright © 2022 ITHS. All rights reserved.
//

import UIKit

class ShowEntryViewController: UIViewController {

    @IBOutlet weak var entryTextView: UITextView!
    
    
    
    //här tar vi emot anteckningen som ska visas upp
    var journalEntry : JournalEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        entryTextView.text = journalEntry?.content

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
