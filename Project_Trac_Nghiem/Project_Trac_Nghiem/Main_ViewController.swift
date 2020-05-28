//
//  Main_ViewController.swift
//  Project_Trac_Nghiem
//
//  Created by Ong_Lao_Ngao on 5/16/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit
import AVFoundation
class Main_ViewController: UIViewController {
    @IBOutlet weak var numberQuestionLabal: UILabel!
    @IBOutlet weak var timerCouter: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var a: UIButton!
    @IBOutlet weak var b: UIButton!
    @IBOutlet weak var c: UIButton!
    @IBOutlet weak var d: UIButton!
    let viewController = ViewController()
    var id: Int = 3
    let topic = Data().listTopic()
    var questionIndex = 0
    var score: Int = 0
    var timer: Timer!
    var couter = 15
    //var audioPlayer: AVAudioPlayer = AVAudioPlayer()
    var audioPlayer: AVAudioPlayer!
    @IBOutlet weak var widthBar: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        widthBar.constant = UIScreen.main.bounds.width
        settingQuestion()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(run), userInfo: nil, repeats: true)
        a.layer.cornerRadius = CGFloat(15)
        b.layer.cornerRadius = CGFloat(15)
        c.layer.cornerRadius = CGFloat(15)
        d.layer.cornerRadius = CGFloat(15)
    }
    
    @objc func run(){
         var couter = 15
        if couter == 0 {
            questionIndex += 1
            if questionIndex == 10 {
                goToEnd()
            } else {
                settingQuestion()
            }
            couter = 15
            widthBar.constant = UIScreen.main.bounds.width
        }
        couter -= 1
        timerCouter.text = String(couter)
        widthBar.constant -= CGFloat(view.frame.maxX/15)
        
    }
    
    func playMusic(){
        // setting up url for your soundtrack
              let soundURL = Bundle.main.url(forResource: "b", withExtension: "mp3")
              do {
          // setting up audio player to play your sound
                  audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
              } catch  {
          // in case any errors occur
                  print(error)
              }

          // playing your audio file
              audioPlayer.play()
       
    }
    func settingQuestion(){
       
        questionText.text = topic[id].lisQuestion[questionIndex].question
        a.setTitle(topic[id].lisQuestion[questionIndex].answers[0], for: .normal)
        b.setTitle(topic[id].lisQuestion[questionIndex].answers[1], for: .normal)
        c.setTitle(topic[id].lisQuestion[questionIndex].answers[2], for: .normal)
        d.setTitle(topic[id].lisQuestion[questionIndex].answers[3], for: .normal)
        numberQuestionLabal.text = String(questionIndex + 1) + "/10"
        
    }
    
    func goToEnd(){
        let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = mainStoryboard.instantiateViewController(withIdentifier: "endViewController") as! End_ViewController
        vc.scrore = score
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func answerButton(_ sender: UIButton) {
        let tag = sender.tag
        
        let a = topic[id].lisQuestion[questionIndex].correct
        
        if tag == a {
            
            score += 1
            questionIndex += 1
            if questionIndex == 10 {
                goToEnd()
            } else {
                settingQuestion()
            }
            
            playMusic()
            
            widthBar.constant = view.frame.maxX
        } else {
            
            questionIndex += 1
            if questionIndex == 10 {
                goToEnd()
            } else {
                settingQuestion()
            }
            playMusic()
            widthBar.constant = view.frame.maxX
        }
       
    }
    
}
