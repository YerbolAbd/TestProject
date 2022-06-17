//
//  TableViewCell.swift
//  TestProj
//
//  Created by Ербол on 16.06.2022.
//
// MARK: Здесь я прописал логику TableView в котором хранится CollectionView
import UIKit

class TableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    var tableviewIndex = 0
    var corData = SData()
    var grade2 = [[Grade2]]()
    var phyl = SData.Philosophy()
    var phys = SData.PhysicalCulture()
    var chem = SData.Chemistry()
    var phyl4 = SData.Philosophy4()
    var phys4 = SData.PhysicalCulture4()
    var chem4 = SData.Chemistry4()

    @IBOutlet weak var textLabel4: UILabel!
    @IBOutlet weak var textLabel3: UILabel!
    @IBOutlet weak var textLabel2: UILabel!
    @IBOutlet weak var textLabel1: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        // Initialization code
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        grade2 = [
            [Grade2(lectName: corData.lection, class1Fact: phyl.lectionFactHours, class1Plan: phyl.lectionPlanHours, class2Fact: phys.lectionFactHours, class2Plan: phys.lectionPlanHours, class3Fact: chem.lectionFactHours, class3Plan: chem.lectionPlanHours),
             Grade2(lectName: corData.seminar, class1Fact: phyl.seminarFactHours, class1Plan: phyl.seminarPlanHours, class2Fact: phys.seminarFactHours, class2Plan: phys.seminarPlanHours, class3Fact: chem.seminarFactHours, class3Plan: chem.seminarPlanHours),
             Grade2(lectName: corData.lab, class1Fact: phyl.labFactHours, class1Plan: phyl.labPlanHours, class2Fact: phys.labFactHours, class2Plan: phys.labPlanHours, class3Fact: chem.labFactHours, class3Plan: chem.labPlanHours),
             Grade2(lectName: corData.srsp, class1Fact: phyl.srspF, class1Plan: phyl.srspP, class2Fact: phys.srspF, class2Plan: phys.srspP, class3Fact: chem.srspF, class3Plan: chem.srspP),
             Grade2(lectName: corData.srs, class1Fact: phyl.srsF, class1Plan: phyl.srsP, class2Fact: phys.srsF, class2Plan: phys.srsP, class3Fact: chem.srsF, class3Plan: chem.srsP)],
            [Grade2(lectName: corData.lection, class1Fact: phyl4.lectionFactHours, class1Plan: phyl4.lectionPlanHours, class2Fact: phys4.lectionFactHours, class2Plan: phys4.lectionPlanHours, class3Fact: chem4.lectionFactHours, class3Plan: chem4.lectionPlanHours),
             Grade2(lectName: corData.seminar, class1Fact: phyl4.seminarFactHours, class1Plan: phyl4.seminarPlanHours, class2Fact: phys4.seminarFactHours, class2Plan: phys4.seminarPlanHours, class3Fact: chem4.seminarFactHours, class3Plan: chem4.seminarPlanHours),
             Grade2(lectName: corData.lab, class1Fact: phyl4.labFactHours, class1Plan: phyl4.labPlanHours, class2Fact: phys4.labFactHours, class2Plan: phys4.labPlanHours, class3Fact: chem4.labFactHours, class3Plan: chem4.labPlanHours),
             Grade2(lectName: corData.srsp, class1Fact: phyl4.srspF, class1Plan: phyl4.srspP, class2Fact: phys4.srspF, class2Plan: phys4.srspP, class3Fact: chem4.srspF, class3Plan: chem4.srspP),
             Grade2(lectName: corData.srs, class1Fact: phyl4.srsF, class1Plan: phyl4.srsP, class2Fact: phys4.srsF, class2Plan: phys4.srsP, class3Fact: chem4.srsF, class3Plan: chem4.srsP)
            ]
        ]
        
        
        cell.lectureName.text = grade2[tableviewIndex][indexPath.row].lectName
        
        
        
        cell.class1Fact.text = String(grade2[tableviewIndex][indexPath.row].class1Fact)
        cell.c1F = grade2[tableviewIndex][indexPath.row].class1Fact
        cell.class1Plan.text = String(grade2[tableviewIndex][indexPath.row].class1Plan)
        cell.c1P = grade2[tableviewIndex][indexPath.row].class1Plan
        cell.class2Fact.text = String(grade2[tableviewIndex][indexPath.row].class2Fact)
        cell.c2F = grade2[tableviewIndex][indexPath.row].class2Fact
        cell.class2Plan.text = String(grade2[tableviewIndex][indexPath.row].class2Plan)
        cell.c2P = grade2[tableviewIndex][indexPath.row].class2Plan
        cell.class3Fact.text = String(grade2[tableviewIndex][indexPath.row].class3Fact)
        cell.c3F = grade2[tableviewIndex][indexPath.row].class3Fact
        cell.class3Plan.text = String(grade2[tableviewIndex][indexPath.row].class3Plan)
        cell.c3P = grade2[tableviewIndex][indexPath.row].class3Plan

                return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 75, height: 200)
    }
    
    @IBAction func semestrChanger(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            tableviewIndex = 0
            collectionView.reloadData()
        } else if sender.selectedSegmentIndex == 1 {
            tableviewIndex  = 1
            collectionView.reloadData()
        }
    }
}


struct Grade2 {
    var lectName: String
    var class1Fact: Int
    var class1Plan: Int
    var class2Fact: Int
    var class2Plan: Int
    var class3Fact: Int
    var class3Plan: Int
}




