//
//  ViewController.swift
//  WeeklyFinder2
//
//  Created by Анна Иванова on 16.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findDay(_ sender: UIButton) {
        
        guard let day = dayTF.text, let month = monthTF.text, let year = yearTF.text else {return}
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        let dateFormatted = DateFormatter()
        dateFormatted.locale = Locale(identifier: "ru_Ru")
        dateFormatted.dateFormat = "EEEE"
         
        guard let date = calendar.date(from: dateComponents) else {return}
        
        let weekday = dateFormatted.string(from: date)
        let capitalizedWeekDay = weekday.capitalized
        
        resultLabel.text = capitalizedWeekDay
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
}

