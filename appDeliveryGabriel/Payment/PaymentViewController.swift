//
//  PaymentViewController.swift
//  appDeliveryGabriel
//
//  Created by user220831 on 1/26/23.
//

import Foundation
import UIKit

final class PaymentViewController: UIViewController {
    
     let paymentview = PaymentView()
    
    override func loadView() {
        super.loadView()
        view.addSubview(paymentview)
        setupPaymentView()
        setupConstrains()
    }
    
    private func setupPaymentView() {
        paymentview.translatesAutoresizingMaskIntoConstraints = false
        

    }
    
    private func setupConstrains() {
        
        NSLayoutConstraint.activate([
        
            paymentview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            paymentview.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            paymentview.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            paymentview.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
        
        
        
        ])
        
    }
    
    
    
}
