//
//  AlarmViewController.swift
//  Clock
//
//  Created by 이의진 on 2022/04/16.
//

import UIKit

class AlarmViewController: UIViewController {
    
    @IBOutlet weak var alarmTableView: UITableView!
    var tableViewItems = [AlarmClock(alarmName: "알람 1", alarmTime: "08:30", sound: "TOMBOY", isSnooze: true), AlarmClock(alarmName: "알람 2", alarmTime: "12:30", sound: "TOMBOY", isSnooze: true)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alarmTableView.dataSource = self
        alarmTableView.delegate = self

    }
    
}
   

extension AlarmViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = alarmTableView.dequeueReusableCell(withIdentifier: "alarmTableCell", for: indexPath)
        
        let alarmTime = cell.viewWithTag(101) as? UILabel
        let alarmName = cell.viewWithTag(102) as? UILabel
        //let alarmIsEnabled = cell.viewWithTag(103) as? UISwitch
        
        alarmTime?.text = tableViewItems[indexPath.row].alarmTime
        alarmTime?.textColor = .white
        alarmName?.text = tableViewItems[indexPath.row].alarmName
        alarmName?.textColor = .white
        
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor(displayP3Red: 40/255, green: 40/255, blue: 40/255, alpha: 1)
        cell.selectedBackgroundView = bgColorView
        
        
        return cell
    }
        
}

extension AlarmViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    
}



