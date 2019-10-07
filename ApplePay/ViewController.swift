//
//  ViewController.swift
//  ApplePay
//
//  Created by xeadmin on 29/08/18.
//  Copyright © 2018 Manav. All rights reserved.
//

import UIKit
import PassKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addApplePayPaymentButtonToView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    private func addApplePayPaymentButtonToView() {
        let paymentButton = PKPaymentButton(paymentButtonType: .buy, paymentButtonStyle: .white)
        paymentButton.translatesAutoresizingMaskIntoConstraints = false
        paymentButton.addTarget(self, action: #selector(applePayButtonTapped(sender:)), for: .touchUpInside)
        view.addSubview(paymentButton)
        view.addConstraint(NSLayoutConstraint(item: paymentButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: paymentButton, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0))
    }
    
    @objc private func applePayButtonTapped(sender: UIButton) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

