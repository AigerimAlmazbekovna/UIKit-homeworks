//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Айгерим on 23.03.2024.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    private lazy var profileHeaderView: ProfileHeaderView = {
        let profileHeaderView = ProfileHeaderView()
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        return profileHeaderView
    }()
    private lazy var secondButton: UIButton = {
        let button = UIButton()
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 20
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.setTitle("Second button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        return button
    }()
    
    
    // MARK: - Setup section
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.drawSelf()
        view.addSubview(secondButton)
        
    }
    private func drawSelf() {
        self.view.backgroundColor = .gray
        
        self.view.addSubview(self.profileHeaderView)
        
        NSLayoutConstraint.activate([
            self.profileHeaderView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.profileHeaderView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            self.profileHeaderView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            self.profileHeaderView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
    
    private func constraintsOfButton() {
        NSLayoutConstraint.activate([
        
            secondButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            secondButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            secondButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
        
    }
    
}


    
