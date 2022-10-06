//
//  HealthViewController.swift
//  HealthTracker
//
//  Created by Nick Meyer on 4/6/22.
//

import UIKit

class DataInputViewController: UIViewController {

    @IBOutlet weak var datePicker: UISegmentedControl!
    @IBOutlet weak var enterDayLabel: UILabel!
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var sunLabel: UILabel!
    @IBOutlet weak var monLabel: UILabel!
    @IBOutlet weak var tueLabel: UILabel!
    @IBOutlet weak var wedLabel: UILabel!
    @IBOutlet weak var thuLabel: UILabel!
    @IBOutlet weak var friLabel: UILabel!
    @IBOutlet weak var satLabel: UILabel!
    
    @IBOutlet weak var systolicField: UITextField!
    @IBOutlet weak var diastolicField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var sugarField: UITextField!
    @IBOutlet weak var symptomField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func pickDate(_ sender: Any) {
        switch datePicker.selectedSegmentIndex{
        case 0:
            enterDayLabel.text = "Enter data for Sunday"
        case 1:
            enterDayLabel.text = "Enter data for Monday"
        case 2:
            enterDayLabel.text = "Enter data for Tuesday"
        case 3:
            enterDayLabel.text = "Enter data for Wednesday"
        case 4:
            enterDayLabel.text = "Enter data for Thursday"
        case 5:
            enterDayLabel.text = "Enter data for Friday"
        case 6:
            enterDayLabel.text = "Enter data for Saturday"
        default:
            enterDayLabel.text = "Enter data for Sunday"
        }
    }
    
    @IBAction func submitPressed(_ sender: Any) {
        healthModel.shared.testDictionary()
        //check that fields are not nil
        if systolicField.text != "" && diastolicField.text != "" && weightField.text != "" && sugarField.text != ""{
            //check that fields are doubles
            if systolicField.text!.isDouble && diastolicField.text!.isDouble && weightField.text!.isDouble && sugarField.text!.isDouble{
                errorLabel.text = "Ensure that all days have entries"
                switch datePicker.selectedSegmentIndex{
                case 0:
                    sunLabel.text = "Sunday Updated!"
                    sunLabel.textColor = UIColor.green
                    //add info
                    healthModel.shared.addDay(s: Double(systolicField.text!)!, d: Double(diastolicField.text!)!, w: Double(weightField.text!)!, su: Double(sugarField.text!)!, sym: symptomField.text, day: 0)
                case 1:
                    monLabel.text = "Monday Updated!"
                    monLabel.textColor = UIColor.green
                    //add info
                    healthModel.shared.addDay(s: Double(systolicField.text!)!, d: Double(diastolicField.text!)!, w: Double(weightField.text!)!, su: Double(sugarField.text!)!, sym: symptomField.text, day: 1)
                case 2:
                    tueLabel.text = "Tuesday Updated!"
                    tueLabel.textColor = UIColor.green
                    //add info
                    healthModel.shared.addDay(s: Double(systolicField.text!)!, d: Double(diastolicField.text!)!, w: Double(weightField.text!)!, su: Double(sugarField.text!)!, sym: symptomField.text, day: 2)
                case 3:
                    wedLabel.text = "Wednesday Updated!"
                    wedLabel.textColor = UIColor.green
                    //add info
                    healthModel.shared.addDay(s: Double(systolicField.text!)!, d: Double(diastolicField.text!)!, w: Double(weightField.text!)!, su: Double(sugarField.text!)!, sym: symptomField.text, day: 3)
                case 4:
                    thuLabel.text = "Thurday Updated!"
                    thuLabel.textColor = UIColor.green
                    //add info
                    healthModel.shared.addDay(s: Double(systolicField.text!)!, d: Double(diastolicField.text!)!, w: Double(weightField.text!)!, su: Double(sugarField.text!)!, sym: symptomField.text, day: 4)
                case 5:
                    friLabel.text = "Friday Updated!"
                    friLabel.textColor = UIColor.green
                    //add info
                    healthModel.shared.addDay(s: Double(systolicField.text!)!, d: Double(diastolicField.text!)!, w: Double(weightField.text!)!, su: Double(sugarField.text!)!, sym: symptomField.text, day: 5)
                case 6:
                    satLabel.text = "Saturday Updated!"
                    satLabel.textColor = UIColor.green
                    //add info
                    healthModel.shared.addDay(s: Double(systolicField.text!)!, d: Double(diastolicField.text!)!, w: Double(weightField.text!)!, su: Double(sugarField.text!)!, sym: symptomField.text, day: 6)
                default:
                    errorLabel.text = ""
                }
                
            }
            else{
                errorLabel.text = "Please enter only numbers!"
            }
            
        }
        else{
            errorLabel.text = "Fields Missing!"
        }
        
        
    }
    @IBAction func clearPressed(_ sender: Any) {
        healthModel.shared.clearDays()
        sunLabel.text = "No data for Sunday"
        sunLabel.textColor = UIColor.gray
        monLabel.text = "No data for Monday"
        monLabel.textColor = UIColor.gray
        tueLabel.text = "No data for Tuesday"
        tueLabel.textColor = UIColor.gray
        wedLabel.text = "No data for Wednesday"
        wedLabel.textColor = UIColor.gray
        thuLabel.text = "No data for Thursday"
        thuLabel.textColor = UIColor.gray
        friLabel.text = "No data for Friday"
        friLabel.textColor = UIColor.gray
        satLabel.text = "No data for Saturday"
        satLabel.textColor = UIColor.gray
    }
    
}

extension String {
    var isDouble: Bool
    {
        return Double(self) != nil
    }
    
}
