//
//  HealthModel.swift
//  HealthTracker
//
//  Created by Nick Meyer on 4/6/22.
//

import Foundation


class healthModel{
    
    static let shared = healthModel()
    
    var systolic: [Double]
    var diastolic: [Double]
    var weight: [Double]
    var sugar: [Double]
    var symptoms: [String?]
    var days: [Int]
    var indicators: [String: Any]
    
    init()
    {
        systolic = []
        diastolic = []
        weight = []
        sugar = []
        symptoms = []
        days = []
        indicators = ["systolic" : systolic, "diastolic" : diastolic, "weight" : weight, "sugar" : sugar, "symptoms" : symptoms, "days": days]
    }

    func testDictionary()
    {
        //change systolic array
        //systolic.append(6.9)
        //set indicators["systolic"] = to the updated systolic array
        //indicators["systolic"] = systolic
        
        //print(indicators)
    }
    
    //ensures 7 days of data for checks
    func dataCheck() -> Bool
    {
        if(systolic.count == 7)
        {
            return true
        }
        return false
    }
    
    //adds a day to the arrays and updates the dictionary
    func addDay(s:Double, d:Double, w:Double, su:Double, sym:String?, day:Int)
    {
        var flag:Bool = false
        //check if day is already entered and if it is change the values at that index
        for n in days
        {
            if n == day
            {
                flag = true
                let index = days.firstIndex(where: {$0 == n})
                print("index: \(index!)")
                systolic[index!] = s
                diastolic[index!] = d
                weight[index!] = w
                sugar[index!] = su
                symptoms[index!] = sym
            }
        }
        if(!flag)
        {
            //append arrays if new day
            systolic.append(s)
            diastolic.append(d)
            weight.append(w)
            sugar.append(su)
            symptoms.append(sym)
            days.append(day)
        }
        //update dictionary
        indicators["systolic"] = systolic
        indicators["diastolic"] = diastolic
        indicators["weight"] = weight
        indicators["sugar"] = sugar
        indicators["symptoms"] = symptoms
        indicators["days"] = days
        
        print(indicators)
    }
    
    func clearDays()
    {
        //empty arrays
        systolic = []
        diastolic = []
        weight = []
        sugar = []
        symptoms = []
        days = []
        //update dictionary
        indicators["systolic"] = systolic
        indicators["diastolic"] = diastolic
        indicators["weight"] = weight
        indicators["sugar"] = sugar
        indicators["symptoms"] = symptoms
        indicators["days"] = days
        print(indicators)
    }

    func checkWeightRisk() -> Int
    {
        if (dataCheck())
        {
            var last4average:Double = 0
            var first3average:Double = 0
            for n in days
            {
                if n >= 3
                {
                    let index = days.firstIndex(where: {$0 == n})
                    last4average += weight[index!]
                }
                if n < 3
                {
                    let index = days.firstIndex(where: {$0 == n})
                    first3average += weight[index!]
                }
            }
            last4average = last4average / 4
            first3average = first3average / 3
            
            if(last4average > first3average)
            {
                print("You are gaining weight!")
                return 2;
            }
            else{
                return 1;
            }
        }
        else
        {
            return 0
        }
    }
    
    func checkSugarRisk() -> Int
    {
        var today:Double = 0
        var yesterday:Double = 0
        var tenpercent:Double = 0
        var difference:Double = 0
        
        if(dataCheck())
        {
            for n in days
            {
                if n == 6
                {
                    let index = days.firstIndex(where: {$0 == n})
                    today = sugar[index!]
                }
                if n == 5
                {
                    let index = days.firstIndex(where: {$0 == n})
                    yesterday = sugar[index!]
                }
            }
            tenpercent = yesterday * 0.1
            difference = today - (yesterday + tenpercent)
            if(difference > 0)
            {
                return 2
            }
            return 1
        }
        return 0
    }
    
    func checkBloodRisk() -> Int
    {
        var today1:Double = 0
        var yesterday1:Double = 0
        var today2:Double = 0
        var yesterday2:Double = 0
        var tenpercent1:Double = 0
        var difference1:Double = 0
        var tenpercent2:Double = 0
        var difference2:Double = 0
        
        if(dataCheck())
        {
            for n in days
            {
                if n == 6
                {
                    let index = days.firstIndex(where: {$0 == n})
                    today1 = systolic[index!]
                    today2 = diastolic[index!]
                }
                if n == 5
                {
                    let index = days.firstIndex(where: {$0 == n})
                    yesterday1 = systolic[index!]
                    yesterday2 = diastolic[index!]
                }
            }
            tenpercent1 = yesterday1 * 0.1
            tenpercent2 = yesterday2 * 0.1
            difference1 = today1 - (yesterday1 + tenpercent1)
            difference2 = today2 - (yesterday2 + tenpercent2)
            if(difference1 > 0 || difference2 > 0)
            {
                return 2
            }
            return 1
        }
        return 0
    }
    
    func getDay(d:Int) -> healthDataDay
    {
        let index = days.firstIndex(where: {$0 == d})
        let dayofhealth = healthDataDay(sysolic: systolic[index!], diastolic: diastolic[index!], weight: weight[index!], sugar: sugar[index!], symptoms: symptoms[index!])
        return dayofhealth
    }
    
    struct healthDataDay {
        var sysolic:Double
        var diastolic:Double
        var weight:Double
        var sugar:Double
        var symptoms:String?
    }
}




