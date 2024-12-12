//
//  AddNumber.swift
//  PokemonPhoneBook
//
//  Created by 이재건 on 12/12/24.
//

import UIKit
import SnapKit
import Then

class AddNumber: UIViewController {
    
    private let topLabel: UILabel = UILabel().then {
        $0.text = "연락처 추가"
        $0.textColor = .black
        $0.font = UIFont.boldSystemFont(ofSize: 20)
        $0.textAlignment = .center
    }
    private let saveButton: UIButton = UIButton().then {
        $0.setTitle("적용", for: .normal)
        $0.setTitleColor(.blue, for: .normal)
        $0.backgroundColor = .gray
        $0.addTarget(self, action: #selector(buttonTapped), for: .touchDown)
    }
    
    private let profilePic: UIImageView = UIImageView().then {
        $0.contentMode = .scaleAspectFill
        $0.layer.masksToBounds = true
        $0.layer.borderColor = UIColor.black.cgColor
        $0.layer.borderWidth = 3
        $0.layer.cornerRadius = 100
    }
    
    private let randomPicBtn: UIButton = UIButton().then {
        $0.setTitle("랜덤 이미지 생성", for: .normal)
        $0.setTitleColor(.lightGray, for: .normal)
        $0.backgroundColor = .clear

    }
    
    private let name: UITextView = UITextView().then {
        $0.font = UIFont.systemFont(ofSize: 16)
        $0.textAlignment = .left
        $0.layer.borderColor = UIColor.lightGray.cgColor
        $0.layer.borderWidth = 1
        $0.layer.cornerRadius = 10
    }
    
    private let phoneNumber: UITextView = UITextView().then {
        $0.font = UIFont.systemFont(ofSize: 16)
        $0.textAlignment = .left
        $0.layer.borderColor = UIColor.lightGray.cgColor
        $0.layer.borderWidth = 1
        $0.layer.cornerRadius = 10
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .white
        
        view.addSubview(topLabel)
        topLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(70)
        }
        
        view.addSubview(saveButton)
        saveButton.snp.makeConstraints {
            $0.trailing.equalTo(-15)
            $0.top.equalTo(80)
        }
        
        view.addSubview(profilePic)
        profilePic.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalTo(230)
            $0.height.width.equalTo(200)
        }
        
        view.addSubview(randomPicBtn)
        randomPicBtn.snp.makeConstraints {
            $0.top.equalTo(profilePic.snp.bottom).offset(10)
            $0.centerX.equalToSuperview()
        }
        
        view.addSubview(name)
        name.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.leading.equalTo(15)
            $0.trailing.equalTo(-15)
            $0.top.equalTo(randomPicBtn.snp.bottom).offset(20)
            $0.height.equalTo(40)
        }
        view.addSubview(phoneNumber)
        phoneNumber.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.leading.equalTo(15)
            $0.trailing.equalTo(-15)
            $0.top.equalTo(name.snp.bottom).offset(10)
            $0.height.equalTo(40)
        }
    }
    
    @objc
    private func buttonTapped() {
        self.navigationController?.pushViewController(NumberList(), animated: true)
    }
}
