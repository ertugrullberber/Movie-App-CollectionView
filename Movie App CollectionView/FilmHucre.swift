//
//  FilmHucre.swift
//  Movie App CollectionView
//
//  Created by Ertugrul Berber on 24.10.2022.
//

import UIKit

protocol FilmHucreProtocol {
    
    func sepeteEkle(indexPath: IndexPath)
}

class FilmHucre: UICollectionViewCell {
    
    @IBOutlet weak var filmHucre: UIImageView!
    
    @IBOutlet weak var filmadiLabel: UILabel!
    
    @IBOutlet weak var filmFiyatLabel: UILabel!
    
    var hucreProtocol:FilmHucreProtocol?
    
    var indexPath:IndexPath?
     
    @IBAction func sepeteEkleButton(_ sender: UIButton) {
        
        hucreProtocol?.sepeteEkle(indexPath: indexPath!)
        
    }
    
        
    
    
}
