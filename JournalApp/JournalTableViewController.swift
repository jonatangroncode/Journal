//
//  JournalTableViewController.swift
//  JournalApp
//
//  Created by ITHS on 2022-12-08.
//  Copyright © 2022 ITHS. All rights reserved.
//

import UIKit

class JournalTableViewController: UITableViewController {
    
    
    let newEntrySegueId = "addNewEntrySegue"
    
    let showEntrySegueId = "showEntrySegue"
    
    //klassen ska visa upp en juarnal då behövs en journal
    let journal = Journal()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        //lägger till en anteckning i taget i dagboken   journal= dagboken/listan     JournalEntry= anteckning/objektet
        journal.add(entry: JournalEntry(content: "Jag åt mat"))
        journal.add(entry: JournalEntry(content: "Jag sov"))

        
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
          }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return journal.count
    }

    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "joutnalCellId", for: indexPath)

        let journalEntry = journal.entry(index: indexPath.row)
        cell.textLabel?.text = journalEntry?.date

        return cell
    }
    


    //Körs när man ska byta viewcontroller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
          // Om vi är påväg via newEntrySegue ska NewEntryViewController köras
        if segue.identifier == newEntrySegueId {
            let destinationVC = segue.destination as? NewEntryViewController
            
            // Stoppar in våran dagbok i variablen så att samma dagbok är i viewcontrollen
            destinationVC?.journal = journal
            
            // Om vi är påväg via showEntrySegue ska ShowEntryViewController köras
        } else if segue.identifier == showEntrySegueId {
          let destinationVC = segue.destination as? ShowEntryViewController

            if let cell = sender as? UITableViewCell {
                if let indexPath = tableView.indexPath(for: cell) {
                  let entry = journal.entry(index: indexPath.row)
                    
                    destinationVC?.journalEntry = entry
                }
            }
            
                

        }
        
    }
    

}
