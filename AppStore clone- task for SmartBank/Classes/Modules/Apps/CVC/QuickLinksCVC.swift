//
//  QuickLinksCVC.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 07/07/23.
//


import UIKit

class QuickLinksCVC: UICollectionViewCell, ClassIdentifiable {
    
    // MARK: - UI Elements
    
    private(set) lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        return view
    }()
    private(set) lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray5
        
        return view
    }()
    
    private lazy var appnameLbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        lbl.textColor = .systemBlue
        lbl.numberOfLines = 2
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure(data: String) {
        self.appnameLbl.text = data
        
    }
    
}

// MARK: - Layout

extension QuickLinksCVC {
    
    func setupSubviews() {
        containerView.backgroundColor = .clear
        contentView.addSubview(containerView)
        containerView.addSubview(lineView)
        containerView.addSubview(appnameLbl)
        
        configureConstraints()
    }
    
    func configureConstraints() {
        
        containerView.snp.makeConstraints { make in
            make.edges.equalTo(self.contentView.snp.edges)
            make.center.equalTo(self.contentView.snp.center)
        }
        lineView.snp.makeConstraints { make in
            make.left.equalTo(appnameLbl.snp.left)
            make.right.equalTo(containerView.snp.right)
            make.top.equalTo(containerView.snp.top)
            make.height.equalTo(1)
        }
        
        
        appnameLbl.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.top).offset(6)
            make.right.equalTo(containerView.snp.right).inset(16)
            make.left.equalTo(containerView.snp.left).offset(12)
        }
        
       

        
    }
    
}
