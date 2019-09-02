//
//  ViewController.swift
//  JsonApp
//
//  Created by macbook on 23/08/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "dataScreen" else { return }
        let resultVC = segue.destination as! DataViewController
        resultVC.fetchData()
        print("Vava 3 \(resultVC.drink)")
        //resultVC.configure(with: resultVC.drink[0])
        //resultVC.responses = answersChoosen
    }
    
    @IBAction func button(_ sender: UIButton) {
        performSegue(withIdentifier: "dataScreen", sender: nil)
    }
    
    @IBAction func unwindSegie(_ sender: UIStoryboardSegue) {}


    
}

