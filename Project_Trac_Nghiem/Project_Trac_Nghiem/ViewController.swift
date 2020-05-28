//
//  ViewController.swift
//  Project_Trac_Nghiem
//
//  Created by Ong_Lao_Ngao on 5/16/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var a: Int = 0
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // gán delege
        tableView.delegate = self
        tableView.dataSource = self
        // để phần thừa không hiển thị
        tableView.tableFooterView = UIView()
        // tắt chế độ nảy
        tableView.bounces = false
        
        // height of 1 dòng
        tableView.rowHeight = 100
        
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cellID")
        let topic = Data().listTopic()
        
        cell.detailTextLabel?.text = topic[indexPath.row].nameTopic
        return cell
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        a = indexPath.row
        
       let main = Main_ViewController()
        let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = mainStoryboard.instantiateViewController(withIdentifier: "mainViewController") as! Main_ViewController
        vc.id = a
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

