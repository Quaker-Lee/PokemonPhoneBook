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
    //MARK: 각종 버튼과, 뷰들의 속성값들을 선언
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
        
        navigationBar()
        configureUI()
    }
    
    //MARK: UI를 구현하는 함수
    private func configureUI() {
        view.backgroundColor = .white
        
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
    
    //MARK: 네비게이션 바를 생성하는 함수
    private func navigationBar() {
        self.navigationItem.title = "연락처 추가"
        
        let backButton = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(backBtnTapped))
        self.navigationItem.leftBarButtonItem = backButton
        
        let saveButton = UIBarButtonItem(title: "저장", style: .plain, target: self, action: #selector(saveBtnTapped))
        self.navigationItem.rightBarButtonItem = saveButton
    }

    
    @objc //뒤로가기 버튼을 누르면 이전화면으로 돌아가는 함수
    private func backBtnTapped() {
        self.navigationController?.popViewController(animated: true)
        // popViewController는 네비게이션 스택에서 현재화면을 제거 후 이전화면으로 돌아가는 메소드
    }
    @objc // 저장하기 버튼을 누르면 작동하는 함수
    private func saveBtnTapped() {
        
    }
}
