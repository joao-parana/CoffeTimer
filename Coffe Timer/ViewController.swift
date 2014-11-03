//
//  ViewController.swift
//  Coffe Timer
//
//  Created by Joao Ferreira on 10/30/14.
//  Copyright (c) 2014 Joao Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var label: UILabel!
    @IBAction func buttonWasPressed(sender: UIButton) {
        println("Button was pressed.")
        // Get the current date and time
        let formatter  = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let todayDate = formatter.dateFromString("2014-10-30")!
        let date = todayDate
        
        // Update the label
        label.text = "date : \(date)"

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("View is loaded.")
        view.backgroundColor = UIColor.orangeColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getDayOfWeek(today:String)->Int {
        
        let formatter  = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let todayDate = formatter.dateFromString(today)!
        let myCalendar = NSCalendar(calendarIdentifier: NSGregorianCalendar)
        let myComponents = myCalendar?.components(.WeekdayCalendarUnit, fromDate: todayDate)
        let weekDay = myComponents?.weekday
        return weekDay!
    }

}

