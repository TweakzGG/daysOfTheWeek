//
//  DetailViewController.swift
//  DaysOfTheWeek
//
//  Created by Jackson Barnes on 9/2/21.
//

import UIKit

class DetailViewController: UIViewController {
    var day: Day?
    @IBOutlet weak var descriptionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        descriptionLabel.text = day?.description
        title = day?.name
    }
    
}
