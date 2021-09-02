//
//  DayTableViewController.swift
//  DaysOfTheWeek
//
//  Created by Jackson Barnes on 9/2/21.
//

import UIKit

class DayTableViewController: UITableViewController {

    var manager = DayManager()
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
//determines how many rows are in the section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return manager.days.count
    }

//determines what each row looks like
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)
        
        cell.textLabel?.text = manager.days[indexPath.row].name
        
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //IDOO
        //I - Index Path
        guard let indexPath = tableView.indexPathForSelectedRow,
        //D - Destination
        let destination = segue.destination as? DetailViewController else {return}
        //O - Object Ready
        let day = manager.days[ indexPath.row]
        //O  -Object Sent
        destination.day = day
 
    }
    

}
