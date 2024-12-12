//
//  ViewController.swift
//  PokemonPhoneBook
//
//  Created by 이재건 on 12/11/24.
//

import UIKit
import SnapKit
import Then

class NumberList: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let mockData = [FriendsData(imageUrl:"person", name: "Test1", number: "010-0000-0000"),
                    FriendsData(imageUrl:"person", name: "Test2", number: "010-0000-0000"),
                    FriendsData(imageUrl:"person", name: "Test3", number: "010-0000-0000")]
    
    
    private lazy var friendsList: UITableView = UITableView().then {
        $0.dataSource = self
        $0.delegate = self
        $0.register(TableViewCells.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mockData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCells
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        navigationBar()
    }
    
    //MARK: UI를 구현하는 함수
    private func configureUI() {
        view.backgroundColor = .white
        
        let safeArea = view.safeAreaLayoutGuide
        view.addSubview(friendsList)
        friendsList.snp.makeConstraints {
            $0.top.equalTo(safeArea.snp.top).offset(10)
            $0.bottom.equalToSuperview()
            $0.leading.trailing.equalToSuperview().inset(10)
        }
        
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

