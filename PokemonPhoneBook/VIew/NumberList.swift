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

    private let topLabel: UILabel = UILabel().then {
        $0.text = "친구 목록"
        $0.textColor = .black
        $0.font = UIFont.boldSystemFont(ofSize: 20)
        $0.textAlignment = .center
    }
    
    private lazy var addButton: UIButton = UIButton().then {
        $0.setTitle("추가", for: .normal)
        $0.setTitleColor(.blue, for: .normal)
        $0.backgroundColor = .gray
        $0.addTarget(self, action: #selector(buttonTapped), for: .touchDown)
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
        
        view.addSubview(addButton)
        addButton.snp.makeConstraints {
            $0.trailing.equalTo(-15)
            $0.top.equalTo(80)
        }
    }
    
    @objc
    private func buttonTapped() {
        self.navigationController?.pushViewController(AddNumber(), animated: true)
    }

}

