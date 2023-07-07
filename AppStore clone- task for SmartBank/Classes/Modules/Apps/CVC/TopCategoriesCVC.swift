//
//  TopCVC.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 07/07/23.
//

import UIKit

class TopCategoriesCVC: UICollectionViewCell, ClassIdentifiable {
    
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
    
    private lazy var appLogoImageView: UIImageView = {
        let image = UIImageView()
        image.isUserInteractionEnabled = false
        image.image = UIImage(systemName: "watch")
        image.layer.backgroundColor = UIColor.clear.cgColor
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    private lazy var appnameLbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        lbl.textColor = .label
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
    
    
    func configure(data: AppCategories) {
        self.appnameLbl.text = data.name
        self.appLogoImageView.image = data.bannerImage
        
    }
    
}

// MARK: - Layout

extension TopCategoriesCVC {
    
    func setupSubviews() {
        contentView.addSubview(containerView)
        containerView.addSubview(lineView)
        containerView.addSubview(appLogoImageView)
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
        
        appLogoImageView.snp.makeConstraints { make in
            make.left.equalTo(containerView.snp.left).offset(4)
            make.top.equalTo(lineView.snp.bottom).offset(8)
            make.width.height.equalTo(26)
//            appLogoImageView.layer.cornerRadius = 12
        }
        
        appnameLbl.snp.makeConstraints { make in
            make.top.equalTo(appLogoImageView.snp.top).offset(6)
            make.right.equalTo(containerView.snp.right).inset(16)
            make.left.equalTo(appLogoImageView.snp.right).offset(12)
        }
        
       

        
    }
    
}
