//
//  ViewController.swift
//  TestProj
//
//  Created by Ербол on 14.06.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    var coreData = SData()
    var philosophy = SData.Philosophy()
    var physical = SData.PhysicalCulture()
    var chemistry = SData.Chemistry()
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.textLabel1.text = chemistry.nameRu
        cell.textLabel2.text = physical.nameRu
        cell.textLabel3.text = philosophy.nameRu
        cell.textLabel4.text = "Наименование дисциплины"
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
        
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        // Do any additional setup after loading the view.
        
        
    }
    
    
    @IBAction func downloadBUttonPressed(_ sender: UIBarButtonItem) {
        let url = URL(string: "https://smart-university.arsu.kz/api/references/docimage/6266d78b69586561c1fce964")
        FileDownloader.loadFileAsync(url: url!) { (path, error) in
            print("PDF File downloaded to : \(path!)")
            let alert = UIAlertController(title: "PDF File downloaded to : \(path!)", message: "", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
            
            
        }
    }
    
    
}

