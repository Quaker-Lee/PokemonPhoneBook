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
    }
}
