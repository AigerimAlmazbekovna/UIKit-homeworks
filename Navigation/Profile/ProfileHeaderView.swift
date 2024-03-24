//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Айгерим on 23.03.2024.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.text = "Hipster Cat"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var statusTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .gray
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var showStatusButton: UIButton = {
        let button = UIButton()
        button.setTitle("SHOW STATUS", for: .normal)
        button.backgroundColor = .blue
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func layoutSubviews() {
      super.layoutSubviews()
      DispatchQueue.main.async {
        self.avatarImageView.layer.cornerRadius = self.avatarImageView.frame.height / 2
        self.avatarImageView.clipsToBounds = true
      }
    }
    
    func setupView() {
      self.avatarImageView.image = UIImage(named: "cat")
    
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        drawSelf()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func drawSelf() {
        
        self.addSubview(self.showStatusButton)
        self.addSubview(self.avatarImageView)
        self.addSubview(self.nameLabel)
        self.addSubview(self.statusTextField)
        
        let avatarImageViewConstraints = self.avatarImageViewConstraints()
        let showStatusButtonConstraints = self.showStatusButtonConstraints()
        let nameLabelConstraints = self.nameLabelConstraints()
        let statusTextFieldConstraints = self.statusTextFieldConstraints()
        
        NSLayoutConstraint.activate(nameLabelConstraints)
        NSLayoutConstraint.activate(avatarImageViewConstraints)
        NSLayoutConstraint.activate(statusTextFieldConstraints)
        NSLayoutConstraint.activate(showStatusButtonConstraints)
        
        
        
    }
    private func avatarImageViewConstraints() -> [NSLayoutConstraint] {
        return      [
            self.avatarImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            self.avatarImageView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.avatarImageView.widthAnchor.constraint(equalToConstant: 130),
            self.avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor)
        ]
    }
    
    private func nameLabelConstraints() -> [NSLayoutConstraint] {
        return [
            
            self.nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            self.nameLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 160),
            self.nameLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            self.nameLabel.heightAnchor.constraint(equalToConstant: 30)
        ]
    }
    
    
    private func statusTextFieldConstraints() -> [NSLayoutConstraint] {
        return [
            
            self.statusTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 16),
            self.statusTextField.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            self.statusTextField.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            self.statusTextField.heightAnchor.constraint(equalToConstant: 32)
            
            ]
    }
    
    
    private func showStatusButtonConstraints() -> [NSLayoutConstraint] {
        return [
            self.showStatusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 16),
            self.showStatusButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.showStatusButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ]
        
    }
}
