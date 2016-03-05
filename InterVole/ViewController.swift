//
//  ViewController.swift
//  InterVole
//
//  Created by Karan Grover on 2016-03-04.
//  Copyright © 2016 Karan Grover. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
  
    @IBAction func Class(sender: UIButton) {
        
        
        performSegueWithIdentifier("ClickClass", sender: self)
        
    }
    
    @IBAction func Events(sender: UIButton) {
        
        performSegueWithIdentifier("ClickedEvents", sender: self)
        }
    
    
    @IBAction func Sponsor(sender: UIButton) {
        
        performSegueWithIdentifier("ClickSponsor", sender: self)
        
    }
    
    
    @IBAction func Study(sender: UIButton) {
        
        performSegueWithIdentifier("ClickedEvents", sender: self)
    }
    
    
    @IBAction func Chill(sender: UIButton) {
       
        performSegueWithIdentifier("ChillOptions", sender: self)
    
        
    }
    
    
    @IBAction func Settings(sender: UIButton) {
        
         performSegueWithIdentifier("ClickSettings", sender: self)
         
    }
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        class Person {
            var Name = ""
            var course1 = ""
            var course2 = ""
            var course3 = ""
            var course4 = ""
            var course5 = ""
            var course6 = ""
            var course7 = ""
            var course8 = ""
            var chillWhat = ""
            var chillWhere = ""
            var chillWhen = ""
            var studyWhat = ""
            var studyWhere = ""
            var studyWhen = ""
            
            
            func input() -> String {
                let keyboard = NSFileHandle.fileHandleWithStandardInput()
                let inputData = keyboard.availableData
                let rawString = NSString(data: inputData, encoding:NSUTF8StringEncoding)
                if let string = rawString {
                    return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
                } else {
                    return "Invalid input"
                }
            }
            
            
            func changeName(newName:String) {
                Name = newName
                
                
            }
            
        }
        
        let ArjanSandhu = Person()
        ArjanSandhu.Name = "Arjan Sandhu"
        ArjanSandhu.course1 = "Physics 158 -201"
        ArjanSandhu.course2 = "English 112 -302"
        ArjanSandhu.course3 = "Math 101 -304"
        ArjanSandhu.course4 = "Physics 172 -234"
        ArjanSandhu.course5 = "Applied Science 101 -202"
        ArjanSandhu.studyWhat = "Physics 158"
        ArjanSandhu.studyWhen = "11:00 pm March 12 2016"
        ArjanSandhu.studyWhere = "Totem Park"
        
        let RachelPark = Person()
        RachelPark.Name = "Rachel Park"
        RachelPark.course1 = "Physics 158 -201"
        RachelPark.course2 = "Words 150 -01A"
        RachelPark.course3 = "Chem 123 -23A"
        RachelPark.course4 = "Biology 121 -123"
        RachelPark.course5 = "Political Science 101 -1JK"
        RachelPark.studyWhat = "Physics 158"
        RachelPark.studyWhen = "11:00 pm March 12 2016"
        RachelPark.studyWhere = "Totem Park"
        
        
        let HanBai = Person()
        HanBai.Name = "Han Bai"
        HanBai.course1 = "Math 101 -202"
        HanBai.course2 = "Applied Science 101 -202"
        HanBai.course3 = "Math 152 -206"
        HanBai.course4 = "Physics 158 -202"
        HanBai.course5 = "Applied Science 160 -203"
        HanBai.chillWhat = "Coffee"
        HanBai.chillWhen = "12:30 pm March 13 2016"
        HanBai.chillWhere = "Bookstore"
        
        
        let KaranGrover = Person()
        KaranGrover.Name = "Karan Grover"
        KaranGrover.course1 = "Computer Science 121 -234"
        KaranGrover.course2 = "Computer Science 110 -101"
        KaranGrover.course3 = "Computer Science 210 -A34"
        KaranGrover.course4 = "Math 121 -100"
        KaranGrover.course5 = "English 112 -234"
        KaranGrover.course6 = "Physics 118 -P23"
        KaranGrover.studyWhat = "Computer Science 121"
        KaranGrover.studyWhen = "10:00 am March 21 2016"
        KaranGrover.studyWhere = "Irving"
        KaranGrover.chillWhat = "Movie"
        KaranGrover.chillWhen = "9:00 pm March 25 2016"
        KaranGrover.chillWhere = "Vanier"
        
        
        let MatthewDaSilva = Person()
        MatthewDaSilva.Name = "Matthew da Silva"
        MatthewDaSilva.course1 = "Wood 123 -259"
        MatthewDaSilva.course2 = "Music 101 -344"
        MatthewDaSilva.course3 = "Chem 123 -23A"
        MatthewDaSilva.course4 = "English 111 -0DS"
        
        let EileenLi = Person()
        EileenLi.Name = "Eileen Li"
        EileenLi.course1 = "Commerce 290 -111"
        EileenLi.course2 = "Commerce 291 -LK1"
        EileenLi.course3 = "Chinese 101 -A7H"
        EileenLi.course4 = "Math 105 -143"
        EileenLi.studyWhat = "Commerce 291"
        EileenLi.studyWhen = "2:00 pm June 12 2016"
        EileenLi.studyWhere = "Henry Angus"
        
        
        var listOfPeople = [ArjanSandhu, RachelPark, HanBai, KaranGrover, MatthewDaSilva, EileenLi]
        
        var listofMates: [String] = []
        
        func findMate(course: String) -> Array<String> {
        for People in listOfPeople {
            if (course == People.course1 || course == People.course2 || course == People.course3 || course == People.course4 || course == People.course5 || course == People.course6 || course == People.course7 || course == People.course8) {
                listofMates.append(People.Name)
                listofMates.append(course)
            }
            
            }
            return(listofMates)
            
        }
        
        
        findMate("Physics 158 -201")
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

