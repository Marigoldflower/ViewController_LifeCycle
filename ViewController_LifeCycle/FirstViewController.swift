//
//  ViewController.swift
//  ViewController_LifeCycle
//
//  Created by 황홍필 on 2023/05/15.
//

import UIKit

class FirstViewController: UIViewController {


    
    lazy var nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("NEXT", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigationBar()
        view.addSubview(nextButton)
        setupLayout()
        // 앱이 처음 켜지면 바로 viewDidLoad가 실행된다.
        print("viewDidLoad 실행1")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear 실행1")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear 실행1")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear 실행1")
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear 실행1")
    }
    
    
    
    func setupNavigationBar() {
        navigationController?.navigationBar.barStyle = .black
        
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()  // 내비게이션 바 투명하지 않게
        appearance.backgroundColor = .blue    // 내비게이션 바 색상설정
        
        // 내비게이션 바 제목 색깔 & 폰트 사이즈 설정 ⭐️
        appearance.titleTextAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor.white]
        
        // 내비게이션 바 버튼 색깔 설정 (< 이전으로 같은 버튼)
        navigationController?.navigationBar.tintColor = .white
        
        // 내비게이션 바 Safe Area까지 꽉 차게 만들기
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        // ⭐️ 내비게이션 바 숨기기 ⭐️
        // (내비게이션 컨트롤러의 특징인 show 방식은 이용하지만 내비게이션 바는 보여주지 않으려 할 때)
//        navigationController?.navigationBar.isHidden = true
        
        // 내비게이션 바 타이틀 설정
        title = "Main"
        
        
        // 기타 추가 기능들 참고
        appearance.configureWithTransparentBackground()  // 내비게이션 바 투명하게
        
        // 스크롤해도 내비게이션 바의 색깔이 변경되지 않게 만드는 코드
        navigationController?.navigationBar.standardAppearance = appearance
        
        // 아직 정확히 어디에 쓰는 지 모르겠음
        navigationController?.navigationBar.compactAppearance = appearance
    }
    
    
    func setupLayout() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    
    
    
    @objc func buttonTapped() {
        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC, animated: true)
    }

}

