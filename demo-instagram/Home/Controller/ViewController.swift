//
//  ViewController.swift
//  demo-instagram
//
//  Created by Mavin Sao on 17/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configTableView()
        customNav()
    }
    
    func customNav(){
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        
        tableView.register(UINib(nibName: "CardTableViewCell", bundle: nil), forCellReuseIdentifier: CardTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CardTableViewCell.identifier, for: indexPath) as? CardTableViewCell else {
            return UITableViewCell()
        }
        cell.selectionStyle = .none
        
        print("Test")
        return cell
    }
    
    
}
