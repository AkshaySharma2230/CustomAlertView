//
//  ViewController.swift
//  CustomAlertView
//
//  Created by apple on 13/10/21.
//

import UIKit

class ViewController: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var sucessButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet var superView: UIView!
    
    
    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sucessButton.layer.cornerRadius = 8
        cancelButton.layer.cornerRadius = 8
        // Do any additional setup after loading the view.
    }

    //MARK:- UIButton Action
    @IBAction func successButtonTappedAction(_ sender: Any) {
        AlertView.instance.alertShow(title: "Sucess", messsage: "Your are Successfully loged into the system.", alertType: .success, view: superView)
    }
    
    @IBAction func cancelButtonTappedAction(_ sender: Any) {
        AlertView.instance.alertShow(title: "Failure", messsage: "Your are not loged into the system.", alertType: .failure, view: superView)
    }
}
