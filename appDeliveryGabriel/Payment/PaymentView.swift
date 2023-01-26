//
//  PaymentView.swift
//  appDeliveryGabriel
//
//  Created by user220831 on 1/26/23.
//

import Foundation
import UIKit

final class PaymentView: UIView {
    
    lazy var optionsLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "Opções de pagamento"
        return label
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("back", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()

    
    private lazy var balanceView: UIImageView = {
       let view = UIImageView()
        view.addSubview(balanceWalletLabel)
        view.addSubview(balanceLabel)
        view.addSubview(footerView)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray6
        return view
    }()
    private lazy var balanceWalletLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.italicSystemFont(ofSize: 15)
        label.text = "Saldo na carteira"
        label.textAlignment = .center
        label.textColor = .systemGray
        return label
    }()
    
    private lazy var balanceLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.text = "R$ 125,25"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var footerView: UIView = {
       let view = UIView()
        view.addSubview(orderValueLabel)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var orderValueLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.backgroundColor = .systemGray6
        label.attributedText = "Valor do Pedido: R$ 87,90".addColor(.green, toSubstring: "R$ 87,90")
        label.textAlignment = .center
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemGray5
        setupView()
        setupConstrains()
        print("Payment View appear")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.addSubview(optionsLabel)
        self.addSubview(backButton)
        self.addSubview(balanceView)
    }
    
    private func setupConstrains() {
        
    
        NSLayoutConstraint.activate([
        
            optionsLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            optionsLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
            backButton.centerYAnchor.constraint(equalTo: optionsLabel.centerYAnchor),
            backButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            balanceView.topAnchor.constraint(equalTo: optionsLabel.bottomAnchor, constant: 20),
            balanceView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            balanceView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            balanceView.heightAnchor.constraint(equalToConstant: 150),
            
            balanceWalletLabel.topAnchor.constraint(equalTo: balanceView.topAnchor, constant: 20),
            balanceWalletLabel.centerXAnchor.constraint(equalTo: balanceView.centerXAnchor),
            
            balanceLabel.topAnchor.constraint(equalTo: balanceWalletLabel.bottomAnchor, constant: 5),
            balanceLabel.centerXAnchor.constraint(equalTo: balanceWalletLabel.centerXAnchor),
            
            footerView.topAnchor.constraint(equalTo: balanceLabel.bottomAnchor, constant: 10),
            footerView.leadingAnchor.constraint(equalTo: balanceView.leadingAnchor),
            footerView.trailingAnchor.constraint(equalTo: balanceView.trailingAnchor),
            footerView.bottomAnchor.constraint(equalTo: balanceView.bottomAnchor),
            
            orderValueLabel.centerXAnchor.constraint(equalTo: footerView.centerXAnchor),
            orderValueLabel.centerYAnchor.constraint(equalTo: footerView.centerYAnchor)
            
            
        
        
        ])
        
        
        
    }
    
}
