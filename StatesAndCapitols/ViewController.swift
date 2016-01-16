//
//  ViewController.swift
//  StatesAndCapitals
//
//  Created by Rye Crowen on 1/9/16.
//  Copyright © 2016 Rye Crowen. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
  
  var index: Int = 0 {
    didSet {
      scoreLabel.text = "Score: \(score)/\(index)"
    }
  }
  var score: Int = 0 {
    didSet {
      scoreLabel.text = "Score: \(score)/\(index)"
    }
  }
  
  var statesList: [States] = [States]()
  var randomizedStatesList: [States] = [States]()
  
  var correctAnswer: States!
  
  @IBOutlet weak var imageView: UIImageView!
  
  @IBOutlet weak var scoreLabel: UILabel!
  
  @IBAction func selectAnswer(sender: CapitolButton!) {
    
//    print("Button clicked")
    UIView.animateWithDuration(0.25, delay: 0, options: [], animations: { [unowned self] in
      self.stateLabel.transform = CGAffineTransformIdentity
      self.imageView.alpha = 0
      }, completion: nil)
  
    if sender.titleLabel!.text?.uppercaseString == correctAnswer?.capitol.uppercaseString {
      print("Yes!!!")
      ++score
      ++index
      var ac = UIAlertController(title: "Correct!", message: "Let's try the next one", preferredStyle: .Alert)
      ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: startGame))
      presentViewController(ac, animated: true, completion: nil)
    } else if sender.titleLabel!.text?.uppercaseString != correctAnswer?.capitol.uppercaseString {
      print("NO!!!!")
      ++index
      var ac = UIAlertController(title: "Incorrect!", message: "You'll get the next one.", preferredStyle: .Alert)
      ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: startGame))
      presentViewController(ac, animated: true, completion: nil)
    }
  
  }
  
  @IBOutlet weak var answer1Btn: CapitolButton!
  @IBOutlet weak var answer2Btn: CapitolButton!
  @IBOutlet weak var answer3Btn: CapitolButton!
  @IBOutlet weak var answer4Btn: CapitolButton!
  
  var stateLabel: UILabel!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    statesList.append(States(name: "Alabama", abbrName: "alabama", capitol: "Montgomery"))
    statesList.append(States(name: "Alaska", abbrName: "alaska", capitol: "Juneau"))
    statesList.append(States(name: "Arizona", abbrName: "arizona", capitol: "Phoenix"))
    statesList.append(States(name: "Arkansas", abbrName: "arkansas", capitol: "Little Rock"))
    statesList.append(States(name: "California", abbrName: "california", capitol: "Sacramento"))
    statesList.append(States(name: "Colorado", abbrName: "colorado", capitol: "Denver"))
    statesList.append(States(name: "Connecticut", abbrName: "connecticut", capitol: "Hartford"))
    statesList.append(States(name: "Delaware", abbrName: "delaware", capitol: "Dover"))
    statesList.append(States(name: "Florida", abbrName: "florida", capitol: "Tallahassee"))
    statesList.append(States(name: "Georgia", abbrName: "georgia", capitol: "Atlanta"))
    statesList.append(States(name: "Hawaii", abbrName: "hawaii", capitol: "Honolulu"))
    statesList.append(States(name: "Idaho", abbrName: "idaho", capitol: "Boise"))
    statesList.append(States(name: "Illinois", abbrName: "illinois", capitol: "Springfield"))
    statesList.append(States(name: "Indiana", abbrName: "indiana", capitol: "Indianapolis"))
    statesList.append(States(name: "Iowa", abbrName: "iowa", capitol: "Des Moines"))
    statesList.append(States(name: "Kansas", abbrName: "kansas", capitol: "Topeka"))
    statesList.append(States(name: "Kentucky", abbrName: "kentucky", capitol: "Frankfort"))
    statesList.append(States(name: "Louisiana", abbrName: "louisiana", capitol: "Baton Rouge"))
    statesList.append(States(name: "Maine", abbrName: "maine", capitol: "Augusta"))
    statesList.append(States(name: "Maryland", abbrName: "maryland", capitol: "Annapolis"))
    statesList.append(States(name: "Massachusetts", abbrName: "massachusetts", capitol: "Boston"))
    statesList.append(States(name: "Michigan", abbrName: "michigan", capitol: "Lansing"))
    statesList.append(States(name: "Minnesota", abbrName: "minnesota", capitol: "Saint Paul"))
    statesList.append(States(name: "Mississippi", abbrName: "mississippi", capitol: "Jackson"))
    statesList.append(States(name: "Missouri", abbrName: "missouri", capitol: "Jefferson City"))
    statesList.append(States(name: "Montana", abbrName: "montana", capitol: "Helena"))
    statesList.append(States(name: "Nebraska", abbrName: "nebraska", capitol: "Lincoln"))
    statesList.append(States(name: "Nevada", abbrName: "nevada", capitol: "Carson City"))
    statesList.append(States(name: "New Hampshire", abbrName: "newHampshire", capitol: "Concord"))
    statesList.append(States(name: "New Jersey", abbrName: "newJersey", capitol: "Trenton"))
    statesList.append(States(name: "New Mexico", abbrName: "newMexico", capitol: "Santa Fe"))
    statesList.append(States(name: "New York", abbrName: "newYork", capitol: "Albany"))
    statesList.append(States(name: "North Carolina", abbrName: "northCarolina", capitol: "Raleigh"))
    statesList.append(States(name: "North Dakota", abbrName: "northDakota", capitol: "Bismarck"))
    statesList.append(States(name: "Ohio", abbrName: "ohio", capitol: "Columbus"))
    statesList.append(States(name: "Oklahoma", abbrName: "oklahoma", capitol: "Oklahoma City"))
    statesList.append(States(name: "Oregon", abbrName: "oregon", capitol: "Salem"))
    statesList.append(States(name: "Pennsylvania", abbrName: "pennsylvania", capitol: "Harrisburg"))
    statesList.append(States(name: "Rhode Island", abbrName: "rhodeIsland", capitol: "Providence"))
    statesList.append(States(name: "South Carolina", abbrName: "southCarolina", capitol: "Columbia"))
    statesList.append(States(name: "South Dakota", abbrName: "southDakota", capitol: "Pierre"))
    statesList.append(States(name: "Tennessee", abbrName: "tennessee", capitol: "Nashville"))
    statesList.append(States(name: "Texas", abbrName: "texas", capitol: "Austin"))
    statesList.append(States(name: "Utah", abbrName: "utah", capitol: "Salt Lake City"))
    statesList.append(States(name: "Vermont", abbrName: "vermont", capitol: "Montpelier"))
    statesList.append(States(name: "Virgina", abbrName: "virginia", capitol: "Richmond"))
    statesList.append(States(name: "Washington", abbrName: "washington", capitol: "Olympia"))
    statesList.append(States(name: "West Virginia", abbrName: "westVirginia", capitol: "Charleston"))
    statesList.append(States(name: "Wisconsin", abbrName: "wisconsin", capitol: "Madison"))
    statesList.append(States(name: "Wyoming", abbrName: "wyoming", capitol: "Cheyenne"))
    
    randomizedStatesList = GKRandomSource.sharedRandom().arrayByShufflingObjectsInArray(statesList) as! [States]
    
    stateLabel = UILabel(frame: CGRectMake(0,0,200,40))
    stateLabel.center = CGPointMake(self.view.frame.size.width/2, 60 - 100)
    stateLabel.textAlignment = .Center
    stateLabel.layer.masksToBounds = true
    stateLabel.backgroundColor = UIColor.clearColor()
    stateLabel.layer.borderColor = UIColor(red: 4/255, green: 119/255, blue: 186/255, alpha: 1.0).CGColor
    stateLabel.layer.cornerRadius = 1
    stateLabel.layer.borderWidth = 3
    stateLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 20)
    stateLabel.text = ""
    self.view.addSubview(stateLabel)
    
    imageView.alpha = 0
    
    startGame()
  }
  
  func startGame(action: UIAlertAction! = nil) {
    
    var dummyAnswers: [Int] = getRandomNumber(0, max: statesList.count - 1)
    var fourAnswers = [randomizedStatesList[dummyAnswers[0]], randomizedStatesList[dummyAnswers[1]], randomizedStatesList[dummyAnswers[2]], randomizedStatesList[index]]
    var mixUpAnswers = GKRandomSource.sharedRandom().arrayByShufflingObjectsInArray(fourAnswers) as! [States]
    
    correctAnswer = randomizedStatesList[index]
    print("The correct answer is: \(correctAnswer.capitol)")
    
    scoreLabel.text = "Score: \(score)/\(index)"
    
    stateLabel.text = correctAnswer.name.uppercaseString
    UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 5.0, options: .CurveEaseInOut, animations: { [unowned self] in
      self.stateLabel.transform = CGAffineTransformMakeTranslation(0, 100)
      }, completion: nil)
    
    imageView.image = UIImage(named: correctAnswer.abbrName)
    UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseInOut, animations: { [unowned self] in
        self.imageView.alpha = 1.0
      }, completion: nil)
    
    answer1Btn.setTitle("\(mixUpAnswers[0].capitol.uppercaseString)", forState: .Normal)
    answer2Btn.setTitle("\(mixUpAnswers[1].capitol.uppercaseString)", forState: .Normal)
    answer3Btn.setTitle("\(mixUpAnswers[2].capitol.uppercaseString)", forState: .Normal)
    answer4Btn.setTitle("\(mixUpAnswers[3].capitol.uppercaseString)", forState: .Normal)
    
//    let myFirstButton = UIButton()
//    myFirstButton.setTitle(correctAnswer.capitol, forState: .Normal)
//    myFirstButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
//    myFirstButton.frame = CGRectMake(15, -50, 300, 500)
//    myFirstButton.addTarget(self, action: "pressed:", forControlEvents: .TouchUpInside)
//    self.view.addSubview(myFirstButton)
  }
  
//  func pressed(sender: UIButton!) {
//    print("Programmatically created button pressed!")
//  }
  
  func getRandomNumber(min: Int, max: Int) -> [Int] {
    var temp: [Int] = [Int]()
    var min = min
    var max = max
    for var i = min; i <= max; i++ {
      temp.append(i)
    }
    
    temp.removeAtIndex(index)
    
    let randomArray = GKRandomSource.sharedRandom().arrayByShufflingObjectsInArray(temp) as! [Int]
    return randomArray
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}

