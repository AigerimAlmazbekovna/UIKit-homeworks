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
    
    
    
    
    // MARK: - Setup section
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.drawSelf()
        
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
    
    
    
}



    
