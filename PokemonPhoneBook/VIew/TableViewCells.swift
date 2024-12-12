//
//  TableViewCells.swift
//  PokemonPhoneBook
//
//  Created by 이재건 on 12/12/24.
//

import UIKit
import SnapKit
import Then

class TableViewCells: UITableViewCell {
    let stackView: UIStackView = UIStackView().then {
        $0.axis = .horizontal
    }
    let profilePic: UIImageView = UIImageView().then {
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 50
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.black.cgColor
    }
    let name: UILabel = UILabel().then {
        $0.textColor = .black
        $0.text = "홍길동"
    }
    let phoneNumber: UILabel = UILabel().then {
        $0.textColor = .black
        $0.text = "010-1234-5678"
    }
    
    private func configuteUI() {
        self.backgroundColor = .white
        
        self.addSubview(stackView)
        stackView.snp.makeConstraints {
            $0.top.bottom.leading.trailing.equalToSuperview()
        }
        stackView.addArrangedSubview(profilePic)
        profilePic.snp.makeConstraints {
            $0.height.equalTo(80)
        }
        stackView.addArrangedSubview(name)
        name.snp.makeConstraints {
            $0.height.equalTo(80)
        }
        stackView.addArrangedSubview(phoneNumber)
        phoneNumber.snp.makeConstraints {
            $0.height.equalTo(80)
        }
    }
    
    
}
