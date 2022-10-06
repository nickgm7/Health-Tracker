//
//  DataEntryViewController.swift
//  HealthTracker
//
//  Created by Nick Meyer on 4/6/22.
//

import UIKit





class HealthViewController: UIViewController {

    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var bloodView: UIView!
    @IBOutlet weak var sugarView: UIView!
    @IBOutlet weak var weightView: UIView!
    @IBOutlet weak var symptomsView: UIView!
    
    @IBOutlet weak var systolicData: UILabel!
    @IBOutlet weak var diastolicData: UILabel!
    @IBOutlet weak var sugarData: UILabel!
    @IBOutlet weak var weightData: UILabel!
    @IBOutlet weak var symptomsData: UILabel!
    
    @IBOutlet weak var datePicker: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if(healthModel.shared.dataCheck())
        {
            bloodView.backgroundColor = UIColor.systemBlue
            sugarView.backgroundColor = UIColor.systemBlue
            weightView.backgroundColor = UIColor.systemBlue
            symptomsView.backgroundColor = UIColor.systemBlue
            
            let nDay = healthModel.shared.getDay(d: 0)
            systolicData.text = String(nDay.sysolic)
            diastolicData.text = String(nDay.diastolic)
            sugarData.text = String(nDay.sugar)
            weightData.text = String(nDay.weight)
            
            if nDay.symptoms != ""
            {
                symptomsData.text = nDay.symptoms
            }
            else
            {
                symptomsData.text = "No symptoms :)"
            }
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pickDate(_ sender: Any) {
        switch datePicker.selectedSegmentIndex{
        case 0:
            titleLabel.text = "Sunday"
            if(healthModel.shared.dataCheck())
            {
                bloodView.backgroundColor = UIColor.systemBlue
                sugarView.backgroundColor = UIColor.systemBlue
                weightView.backgroundColor = UIColor.systemBlue
                symptomsView.backgroundColor = UIColor.systemBlue
                
                let nDay = healthModel.shared.getDay(d: 0)
                systolicData.text = String(nDay.sysolic)
                diastolicData.text = String(nDay.diastolic)
                sugarData.text = String(nDay.sugar)
                weightData.text = String(nDay.weight)
                if nDay.symptoms != ""
                {
                    symptomsData.text = nDay.symptoms
                }
                else
                {
                    symptomsData.text = "No symptoms :)"
                }
            }
        case 1:
            titleLabel.text = "Monday"
            if(healthModel.shared.dataCheck())
            {
                bloodView.backgroundColor = UIColor.systemBlue
                sugarView.backgroundColor = UIColor.systemBlue
                weightView.backgroundColor = UIColor.systemBlue
                symptomsView.backgroundColor = UIColor.systemBlue
                
                let nDay = healthModel.shared.getDay(d: 1)
                systolicData.text = String(nDay.sysolic)
                diastolicData.text = String(nDay.diastolic)
                sugarData.text = String(nDay.sugar)
                weightData.text = String(nDay.weight)
                if nDay.symptoms != ""
                {
                    symptomsData.text = nDay.symptoms
                }
                else
                {
                    symptomsData.text = "No symptoms :)"
                }
            }
        case 2:
            titleLabel.text = "Tuesday"
            if(healthModel.shared.dataCheck())
            {
                bloodView.backgroundColor = UIColor.systemBlue
                sugarView.backgroundColor = UIColor.systemBlue
                weightView.backgroundColor = UIColor.systemBlue
                symptomsView.backgroundColor = UIColor.systemBlue
                
                let nDay = healthModel.shared.getDay(d: 2)
                systolicData.text = String(nDay.sysolic)
                diastolicData.text = String(nDay.diastolic)
                sugarData.text = String(nDay.sugar)
                weightData.text = String(nDay.weight)
                if nDay.symptoms != ""
                {
                    symptomsData.text = nDay.symptoms
                }
                else
                {
                    symptomsData.text = "No symptoms :)"
                }
            }
        case 3:
            titleLabel.text = "Wednesday"
            if(healthModel.shared.dataCheck())
            {
                bloodView.backgroundColor = UIColor.systemBlue
                sugarView.backgroundColor = UIColor.systemBlue
                weightView.backgroundColor = UIColor.systemBlue
                symptomsView.backgroundColor = UIColor.systemBlue
                
                let nDay = healthModel.shared.getDay(d: 3)
                systolicData.text = String(nDay.sysolic)
                diastolicData.text = String(nDay.diastolic)
                sugarData.text = String(nDay.sugar)
                weightData.text = String(nDay.weight)
                if nDay.symptoms != ""
                {
                    symptomsData.text = nDay.symptoms
                }
                else
                {
                    symptomsData.text = "No symptoms :)"
                }
            }
        case 4:
            titleLabel.text = "Thursday"
            if(healthModel.shared.dataCheck())
            {
                bloodView.backgroundColor = UIColor.systemBlue
                sugarView.backgroundColor = UIColor.systemBlue
                weightView.backgroundColor = UIColor.systemBlue
                symptomsView.backgroundColor = UIColor.systemBlue
                
                let nDay = healthModel.shared.getDay(d: 4)
                systolicData.text = String(nDay.sysolic)
                diastolicData.text = String(nDay.diastolic)
                sugarData.text = String(nDay.sugar)
                weightData.text = String(nDay.weight)
                if nDay.symptoms != ""
                {
                    symptomsData.text = nDay.symptoms
                }
                else
                {
                    symptomsData.text = "No symptoms :)"
                }
            }
        case 5:
            titleLabel.text = "Friday"
            if(healthModel.shared.dataCheck())
            {
                bloodView.backgroundColor = UIColor.systemBlue
                sugarView.backgroundColor = UIColor.systemBlue
                weightView.backgroundColor = UIColor.systemBlue
                symptomsView.backgroundColor = UIColor.systemBlue
                
                let nDay = healthModel.shared.getDay(d: 5)
                systolicData.text = String(nDay.sysolic)
                diastolicData.text = String(nDay.diastolic)
                sugarData.text = String(nDay.sugar)
                weightData.text = String(nDay.weight)
                if nDay.symptoms != ""
                {
                    symptomsData.text = nDay.symptoms
                }
                else
                {
                    symptomsData.text = "No symptoms :)"
                }
            }
        case 6:
            titleLabel.text = "Saturday"
            if(healthModel.shared.dataCheck())
            {
                bloodView.backgroundColor = UIColor.systemBlue
                sugarView.backgroundColor = UIColor.systemBlue
                weightView.backgroundColor = UIColor.systemBlue
                symptomsView.backgroundColor = UIColor.systemBlue
                
                let nDay = healthModel.shared.getDay(d: 6)
                systolicData.text = String(nDay.sysolic)
                diastolicData.text = String(nDay.diastolic)
                sugarData.text = String(nDay.sugar)
                weightData.text = String(nDay.weight)
                if nDay.symptoms != ""
                {
                    symptomsData.text = nDay.symptoms
                }
                else
                {
                    symptomsData.text = "No symptoms :)"
                }
            }
        default:
            titleLabel.text = "Sunday"
        }
    }
}
