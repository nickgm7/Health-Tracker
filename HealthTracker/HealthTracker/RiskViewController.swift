//
//  RiskViewController.swift
//  HealthTracker
//
//  Created by Nick Meyer on 4/6/22.
//

import UIKit

class RiskViewController: UIViewController {

    @IBOutlet weak var overallLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var sugarLabel: UILabel!
    @IBOutlet weak var bloodLabel: UILabel!
    
    @IBOutlet weak var overallView: UIView!
    @IBOutlet weak var weightView: UIView!
    @IBOutlet weak var sugarView: UIView!
    @IBOutlet weak var bloodView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if(healthModel.shared.dataCheck())
        {
            //check weight
            let weightCheck = healthModel.shared.checkWeightRisk()
            if(weightCheck == 1)
            {
                weightLabel.text = "You are keeping a healthy weight!"
                weightView.backgroundColor = UIColor.green
            }
            if(weightCheck == 2)
            {
                weightLabel.text = "You are gaining weight!"
                weightView.backgroundColor = UIColor.red
            }
            
            //check sugar
            let sugarCheck = healthModel.shared.checkSugarRisk()
            if(sugarCheck == 1)
            {
                sugarLabel.text = "Your sugar is healthy"
                sugarView.backgroundColor = UIColor.green
            }
            if(sugarCheck == 2)
            {
                sugarLabel.text = "Your sugar is high!"
                sugarView.backgroundColor = UIColor.red
            }
            
            //check sugar
            let bloodCheck = healthModel.shared.checkBloodRisk()
            if(bloodCheck == 1)
            {
                bloodLabel.text = "Your blood pressure is healthy"
                bloodView.backgroundColor = UIColor.green
            }
            if(bloodCheck == 2)
            {
                bloodLabel.text = "Your blood pressure is high!"
                bloodView.backgroundColor = UIColor.red
            }
            
            //update overall
            if(bloodCheck == 2 || sugarCheck == 2 || weightCheck == 2)
            {
                overallLabel.text = "You have some health risks."
                overallView.backgroundColor = UIColor.systemYellow
            }
            if(bloodCheck == 1 && sugarCheck == 1 && weightCheck == 1)
            {
                overallLabel.text = "You are in good health, keep up the good work! :)"
                overallView.backgroundColor = UIColor.green
            }
            
            
        }
        else
        {
            overallLabel.text = "Please input health data to see health risks"
            weightLabel.text = "Missing data"
            sugarLabel.text = "Missing data"
            bloodLabel.text = "Missing data"
            
            overallView.backgroundColor = UIColor.systemGray2
            weightView.backgroundColor = UIColor.systemGray2
            sugarView.backgroundColor = UIColor.systemGray2
            bloodView.backgroundColor = UIColor.systemGray2
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
