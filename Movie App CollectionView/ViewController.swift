//
//  ViewController.swift
//  Movie App CollectionView
//
//  Created by Ertugrul Berber on 24.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FilmCollectionView: UICollectionView!
    
    var filmlerListesi = [Filmler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tasarim:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let genislik = self.FilmCollectionView.frame.size.width
        
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        tasarim.minimumLineSpacing = 10
        tasarim.minimumInteritemSpacing = 10
        
        let HucreGenislik = (genislik-30)/2
        
        tasarim.itemSize = CGSize(width: HucreGenislik, height: HucreGenislik*2)
        
        FilmCollectionView.collectionViewLayout = tasarim
        
        FilmCollectionView.delegate = self
        FilmCollectionView.dataSource = self
        
        let f1 = Filmler(var: 1, var: "Avatar", var: "indir", var: 15.99)
        
        let f2 = Filmler(var: 2, var: "Godfather", var: "indir", var: 14.99)
        
        let f3 = Filmler(var: 3, var: "Good Bad Ugly", var: "indir", var: 17.99)
        
        let f4 = Filmler(var: 4, var: "Logan", var: "indir", var: 19.99)
        
        let f5 = Filmler(var: 5, var: "Lord of War", var: "indir", var: 16.99)
        
        let f6 = Filmler(var: 6, var: "Shutter Island", var: "indir", var: 11.99)
        
        filmlerListesi.append(f1)
        filmlerListesi.append(f2)
        filmlerListesi.append(f3)
        filmlerListesi.append(f4)
        filmlerListesi.append(f5)
        filmlerListesi.append(f6)
        
    }


}


extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource, FilmHucreProtocol {
    func sepeteEkle(indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        print("\(film.filmBaslik!) filmi siparis verildi.")
    }
    
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let film = filmlerListesi[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmHucre", for: indexPath) as! FilmHucre
        
        cell.filmadiLabel.text = film.filmBaslik!
        cell.filmFiyatLabel.text = "\(film.filmFiyat!) TL"
        cell.filmHucre.image = UIImage(named: film.filmResimAdi!)
        
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 1
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        print("\(film.filmBaslik!) filmi secildi.")
    }
}
