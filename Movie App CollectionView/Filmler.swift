//
//  Filmler.swift
//  Movie App CollectionView
//
//  Created by Ertugrul Berber on 24.10.2022.
//

import Foundation

class Filmler {
    var filmId:Int?
    var filmBaslik:String?
    var filmResimAdi:String?
    var filmFiyat:Double?
    
    
    init() {
        
    }
    
    init(var filmId:Int, var filmBaslik:String, var filmResimAdi:String, var filmFiyat:Double) {
        self.filmId = filmId
        self.filmBaslik = filmBaslik
        self.filmResimAdi = filmResimAdi
        self.filmFiyat = filmFiyat
        
    }
}
