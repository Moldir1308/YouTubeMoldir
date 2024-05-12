//
//  MainRowCell.swift
//  Youtube
//
//  Created by Мухит Молдир on 13.01.2024.
//

import UIKit
class MainRowCell: UICollectionViewCell {
    
    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 10
        imageView.backgroundColor = .brown
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "The end. My family always supportung me"
        label.numberOfLines = 2
        label.textColor = .white
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var videoBackgroundView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var descLabel: UILabel = {
        let label = UILabel()
        label.text = "3 hours ago"
        label.textColor = .darkGray
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var likeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Like", for: .normal)
        button.backgroundColor = .green
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var commentButton: UIButton = {
        let button = UIButton()
        button.setTitle("Comment", for: .normal)
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var repostButton: UIButton = {
        let button = UIButton()
        button.setTitle("Repost", for: .normal)
        button.backgroundColor = .brown
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    func setupLayouts() {
        addSubview(logoImageView)
        logoImageView.snp.makeConstraints { make in
            make.top.left.equalTo(self).offset(10)
            make.size.equalTo(30)
        }
        
        addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.top.left.equalToSuperview().inset(10)
            // make.right.equalToSuperview().offset(-10)
            make.left.equalTo(logoImageView.snp.right).offset(10)
        }
        
        videoBackgroundView.snp.makeConstraints { make in
            make.top.left.equalTo(nameLabel.snp.bottom).offset(10)
            make.left.right.equalToSuperview()
            make.height.equalTo(380)
        }
        
        addSubview(likeButton)
        likeButton.snp.makeConstraints { make in
            make.top.equalTo(videoBackgroundView.snp.bottom).offset(5)
            make.left.equalToSuperview().offset(10)
            make.size.equalTo(50)
        }
        
        addSubview(commentButton)
        commentButton.snp.makeConstraints { make in
            make.top.left.equalTo(videoBackgroundView.snp.bottom).offset(5)
            make.left.equalTo(likeButton.snp.right).offset(10)
            make.size.equalTo(50)
        }
        
        addSubview (repostButton)
        repostButton.snp.makeConstraints { make in
            make.top.equalTo(videoBackgroundView.snp.bottom).offset(5)
            make.left.equalTo(commentButton.snp.right).offset(10)
            make.size.equalTo(50)
        }
        
        addSubview(descLabel)
        descLabel.snp.makeConstraints { make in
            make.top.equalTo(likeButton.snp.bottom).offset(5)
        make.left.right.bottom.equalToSuperview().inset(10)
    }
}

    lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Телефон, имя пользователя или эл. адрес"
        textField.backgroundColor = .lightGray
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var passTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Телефон, имя пользователя или эл. адрес"
        textField.backgroundColor = .gray
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    required init?(coder:NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

