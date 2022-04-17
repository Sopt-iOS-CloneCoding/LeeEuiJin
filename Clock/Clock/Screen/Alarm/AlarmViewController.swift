//
//  AlarmViewController.swift
//  Clock
//
//  Created by 이의진 on 2022/04/16.
//

import UIKit

class AlarmViewController: UIViewController {
    
    @IBOutlet weak var alarmTableView: UITableView!
    var tableViewItems = ["item1", "item2", "item3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alarmTableView.dataSource = self

    }
}

extension AlarmViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = alarmTableView.dequeueReusableCell(withIdentifier: "alarmTableCell", for: indexPath)
        cell.textLabel?.text = tableViewItems[indexPath.row]
        return cell
    }
    


}
