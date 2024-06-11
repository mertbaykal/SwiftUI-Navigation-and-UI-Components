//
//  File.swift
//  Calisma.yapisi
//
//  Created by Mert Baykal on 10/05/2024.
//

import Foundation

class Users {
    var isim  = ""
    var yas   = 0
    var boy   = 0.0
    var bekar = false
    
    init(){
        
    }
    
    init(isim: String = "", yas: Int = 0, boy: Double = 0.0, bekar: Bool = false) {
        self.isim = isim
        self.yas = yas
        self.boy = boy
        self.bekar = bekar
    }
}
