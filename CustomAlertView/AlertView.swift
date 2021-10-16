//
//  AlertView.swift
//  CustomAlertView
//
//  Created by apple on 13/10/21.
//

import Foundation
import UIKit


enum AlertType {
    case success
    case failure
}

class AlertView: UIView{
    
    static let instance = AlertView()
    
    //MARK:- View Outlets
    @IBOutlet weak var checkUncheckImageView: UIImageView!
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var messageLbl: UILabel!
    @IBOutlet weak var okayButton: UIButton!
    
    
    //MARK:- Setup frame
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("AlertView", owner: self, options: nil)
        comonInit()
    }
    
    
    //MARK:- required Init
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func comonInit(){
        parentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        parentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        alertView.layer.cornerRadius = 8
        okayButton.layer.cornerRadius = 8
    }
    
    
    func alertShow(title: String, messsage: String, alertType: AlertType, view: UIView) {
        self.titleLbl.text = title
        self.messageLbl.text = messsage
        
        switch alertType {
        case .success:
            checkUncheckImageView.image = UIImage(named: "checked")
            okayButton.backgroundColor = .systemGreen
        case .failure:
            checkUncheckImageView.image = UIImage(named: "cancel")
            okayButton.backgroundColor = .systemRed
        }
        view.addSubview(self.parentView)
    }
    
    @IBAction func okayButton(_ sender: Any) {
        parentView.removeFromSuperview()
    }
    
}
