//
//  ViewController.swift
//  PokemonPhoneBook
//
//  Created by 이재건 on 12/11/24.
//

import UIKit
import SnapKit
import Then

class NumberList: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        navigationBar()
    }
    
    //MARK: UI를 구현하는 함수
    private func configureUI() {
        view.backgroundColor = .white
    }
    
    //MARK: 네비게이션 바를 생성하는 함수
    private func navigationBar() {
        self.navigationItem.title = "친구 목록"
        
        let addButton = UIBarButtonItem(title: "추가", style: .plain, target: self, action: #selector(addBtnTapped))
        self.navigationItem.rightBarButtonItem = addButton
    }

  
    @objc // 버튼을 누르면 연락처를 추가하는 페이지(AddNumber)로 넘어가는 함수
    private func addBtnTapped() {
        self.navigationController?.pushViewController(AddNumber(), animated: true)
    }
}

