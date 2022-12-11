//
//  Journal.swift
//  JournalApp
//
//  Created by ITHS on 2022-12-09.
//  Copyright © 2022 ITHS. All rights reserved.
//

import Foundation


class Journal {
    //entries = lista av objekt           []= lista        ()= Kör konstrukorn och skapar en lista
    private var entries = [JournalEntry]()
    
    
    //Då listan är privat behöver vi en computed property (ser ut som en variabel men fungerar som en funktion) så att man från controller kan fråga hur många objekt som finns i listan
    var count : Int {
        return entries.count
        
    }
    
    //funktion för att lägga till anteckningar i dagboken/journal
    func add (entry: JournalEntry){
        
        entries.append(entry)
        
    }
    
    //plockar ut dagboks anteckning
    func entry(index: Int) -> JournalEntry? {
        if index >= 0 && index < entries.count {
        return entries[index]
            
        }
        return nil
    }
    
    
}
