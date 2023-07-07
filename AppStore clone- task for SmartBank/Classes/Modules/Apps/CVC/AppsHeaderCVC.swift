//
//  AppsHeaderCVC.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 07/07/23.
//

import UIKit
import SnapKit

class AppsReusableHeaderView: UICollectionReusableView, ClassIdentifiable {
    
    private(set) lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray5
        
        return view
    }()
    private(set) lazy var label: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .heavy)
        label.textColor = .label
        
        return label
    }()
    
    lazy var seeMoreButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("See All", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        button.addTarget(self, action: #selector(handleLearnMore), for: .touchUpInside)
        return button
    }()
    
    var seeMoreTapped: (() -> Void)?
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(title: String, withButton: Bool) {
        label.text = title
        seeMoreButton.isHidden = !withButton
    }
    
    @objc func handleLearnMore() {
        seeMoreTapped?()
    }
}

// MARK: - Layout
extension AppsReusableHeaderView {
    private func setupSubviews() {
        addSubview(lineView)
        addSubview(seeMoreButton)
        addSubview(label)
        configureConstraints()
    }
    
    private func configureConstraints() {
        
        lineView.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top).offset(32)
            make.left.equalTo(self.snp.left).inset(8)
            make.right.equalTo(self.snp.right).inset(16)
            make.height.equalTo(1)
        }
        label.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(10)
            make.left.equalTo(self.snp.left).inset(8)
            make.bottom.equalTo(self.snp.bottom)
            make.right.equalTo(self.seeMoreButton.snp.left).offset(16)
        }
        
        seeMoreButton.snp.makeConstraints { make in
            make.centerY.equalTo(label.snp.centerY)
            make.right.equalTo(self.snp.right).inset(-12)
            make.width.equalTo(120)
        }
        
    }
}
