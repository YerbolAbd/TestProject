//
//  CollectionViewCell.swift
//  TestProj
//
//  Created by Ербол on 16.06.2022.
//
// MARK: Контроллер с ниб файлом collectionView клетки
import UIKit

class CollectionViewCell: UICollectionViewCell {
    var c1F : Int = 15
    var c1P : Int = 10
    var c2F : Int = 1
    var c2P : Int = 3
    var c3F : Int = 4
    var c3P : Int = 5
    @IBOutlet weak var class3Plan: UILabel!
    @IBOutlet weak var class3Fact: UILabel!
    @IBOutlet weak var class2Plan: UILabel!
    @IBOutlet weak var class2Fact: UILabel!
    @IBOutlet weak var class1Plan: UILabel!
    @IBOutlet weak var class1Fact: UILabel!
    @IBOutlet weak var lectureName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        class1Fact.textColor = UIColor.green
        class1Plan.textColor = UIColor.red
        class2Fact.textColor = UIColor.green
        class2Plan.textColor = UIColor.red
        class3Fact.textColor = UIColor.green
        class3Plan.textColor = UIColor.red
        
        // Initialization code
    }

    
}
