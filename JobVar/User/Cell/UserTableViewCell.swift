//
//  UserTableViewCell.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit
import Firebase

class UserTableViewCell: UITableViewCell {
    
    //userImage
    private let userImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.image = UIImage(named: "user1")
        image.heightAnchor.constraint(equalToConstant: 100).isActive = true
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.layer.cornerRadius = 50
        return image
    }()
    
    //lastNameLabel
     private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .light)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Ad"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //refReshNameLabel
    
    private let refReshNamelabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = " "
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //lastNameLabel
     private let lastNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .light)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Soyad"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //refReshLastNameLabel
    private let refReshLastNamelabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = " "
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //userCityLabel
     private let userCityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .light)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Şəhər"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //refreshUserCityLabel
    private let refreshUserCityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = " "
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //dateLabel
     private let dateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .light)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Dogum tarixi"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //refreshDateLabel
    private let refreshDateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = " "
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //emailLabel
     private let emailLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .light)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Email"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //refreshEmailLabel
    private let refreshEmailLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = " "
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //numberLabel
     private let numberLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .light)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = "Telefon"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //refreshNumberLabel
    private let refreshNumberLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .left
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 1
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.text = " "
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let exitButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Exit", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return button
    }()

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupItem()
        // Configure the view for the selected state
    }
    
    func setupItem() {
        //-------------
        //userImage
        addSubview(userImage)
        userImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        userImage.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        //nameLabel
        addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 30).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        
        //refReshNamelabel
        addSubview(refReshNamelabel)
        refReshNamelabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 0).isActive = true
        refReshNamelabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        refReshNamelabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        //lastNameLabel
        addSubview(lastNameLabel)
        lastNameLabel.topAnchor.constraint(equalTo: refReshNamelabel.bottomAnchor, constant: 12).isActive = true
        lastNameLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        lastNameLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor).isActive = true
        
        //refReshLastNameLabel
        addSubview(refReshLastNamelabel)
        refReshLastNamelabel.topAnchor.constraint(equalTo: lastNameLabel.bottomAnchor, constant: 0).isActive = true
        refReshLastNamelabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        refReshLastNamelabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor).isActive = true
        
        //userCityLabel
        addSubview(userCityLabel)
        userCityLabel.topAnchor.constraint(equalTo: refReshLastNamelabel.bottomAnchor, constant: 12).isActive = true
        userCityLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        userCityLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor).isActive = true
        
        //refreshUserCityLabel
        addSubview(refreshUserCityLabel)
        refreshUserCityLabel.topAnchor.constraint(equalTo: userCityLabel.bottomAnchor).isActive = true
        refreshUserCityLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        refreshUserCityLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor).isActive = true
        
        //dateLabel
        addSubview(dateLabel)
        dateLabel.topAnchor.constraint(equalTo: refreshUserCityLabel.bottomAnchor, constant: 12).isActive = true
        dateLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        dateLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor).isActive = true
        
        //refreshDateLabel
        addSubview(refreshDateLabel)
        refreshDateLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor).isActive = true
        refreshDateLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        refreshDateLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor).isActive = true
        
        //emailLabel
        addSubview(emailLabel)
        emailLabel.topAnchor.constraint(equalTo: refreshDateLabel.bottomAnchor, constant: 12).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        emailLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor).isActive = true
        
        //refreshEmailLabel
        addSubview(refreshEmailLabel)
        refreshEmailLabel.topAnchor.constraint(equalTo: emailLabel.bottomAnchor).isActive =  true
        refreshEmailLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        refreshEmailLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor).isActive = true
        
        //numberLabel
        addSubview(numberLabel)
        numberLabel.topAnchor.constraint(equalTo: refreshEmailLabel.bottomAnchor, constant: 12).isActive = true
        numberLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        numberLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor).isActive = true
        
        //refreshNumberLabel
        addSubview(refreshNumberLabel)
        refreshNumberLabel.topAnchor.constraint(equalTo: numberLabel.bottomAnchor).isActive = true
        refreshNumberLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        refreshNumberLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor).isActive = true
        
        addSubview(exitButton)
        exitButton.topAnchor.constraint(equalTo: refreshNumberLabel.bottomAnchor, constant: 30).isActive = true
        exitButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        exitButton.addTarget(self, action: #selector(exitButtonTarget), for: .touchDown)
    }
    
    @objc func exitButtonTarget() {
        let viewController = UIViewController()
        do {
            try Auth.auth().signOut()
        } catch  {
            print(error)
        }
        
    }

}

