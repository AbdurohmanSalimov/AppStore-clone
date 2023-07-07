//
//  TopCVC.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 07/07/23.
//

import UIKit

class TopReusableHeaderView: UICollectionReusableView, ClassIdentifiable {
    
    private(set) lazy var label: UILabel = {
        let label = UILabel()
        label.font = .preferredFont(forTextStyle: .largeTitle)
        label.textColor = #colorLiteral(red: 0.2224110067, green: 0.2330494523, blue: 0.2606178522, alpha: 1)
        
        return label
    }()
    
    lazy var userBtn: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("", for: .normal)
        button.setImage(UIImage(named: "yandex"), for: .normal)
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
        userBtn.isHidden = !withButton
    }
    
    @objc func handleLearnMore() {
        seeMoreTapped?()
    }
}

// MARK: - Layout
extension TopReusableHeaderView {
    private func setupSubviews() {
        addSubview(userBtn)
        addSubview(label)
        configureConstraints()
    }
    
    private func configureConstraints() {
        userBtn.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top)
            make.bottom.equalTo(self.snp.bottom)
            make.right.equalTo(self.snp.right).offset(-16)
            make.width.height.equalTo(120)
        }
        
        label.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top)
            make.left.equalTo(self.snp.left).offset(16)
            make.bottom.equalTo(self.snp.bottom)
            make.right.equalTo(self.userBtn.snp.left).offset(-16)
        }
        
    }
}

