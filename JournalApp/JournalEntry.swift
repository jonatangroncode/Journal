//
//  JournalEntry.swift
//  JournalApp
//
//  Created by ITHS on 2022-12-08.
//  Copyright © 2022 ITHS. All rights reserved.
//
//Beskriver en dagboksanteckning

import Foundation


class JournalEntry {

    //Innehåller dagboksanteckningen
    var content : String
    private var unformatedDate : Date
    private let dateFormatter = DateFormatter() //object i variabel
    
    //computed property (ser ut som en variabel men fungerar som en funktion)
    var date : String {
        
        return dateFormatter.string(from: unformatedDate)
        
    }
    
    //konstruktor
    init(content : String) {
        self.content = content
        self.unformatedDate = Date()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        

    }
    
    
    // flera instans variabler är deklarerade då krävs en konstruktor för dessa
    init(content : String, date : Date) {
        //content variabel ska va samma som den vi får in
        self.content = content
        self.unformatedDate = date
        dateFormatter.dateFormat = "yyyy-MM-dd"

        
    }
    
    
    

}
