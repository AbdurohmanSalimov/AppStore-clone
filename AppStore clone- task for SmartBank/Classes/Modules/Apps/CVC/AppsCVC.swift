//
//  AppsCVC.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 07/07/23.
//

import UIKit

class AppsCVC: UICollectionViewCell, ClassIdentifiable {
    
    let containerView = UIView()
    let titleLbl = UILabel()
    let mainNameLbl = UILabel()
    let subtitleLbl = UILabel()
    let mainImage = UIImageView()
    let secondaryNameLbl = UILabel()
    let categoryLbl = UILabel()
    let btn = UIButton()
    let secondaryImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUIElements()
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(data: Section) {
        self.containerView.backgroundColor = .red
        self.titleLbl.text = data.title
        self.mainNameLbl.text = data.name
        self.subtitleLbl.text = data.subitle
        self.mainImage.image = data.bannerImage
        
        self.secondaryNameLbl.text = data.apps[0].appName
        self.categoryLbl.text = data.apps[0].appCategory
        self.secondaryImage.image = data.apps[0].appImage
        configureGetBtn(isPurchased: data.apps[0].isPurchased ?? false)
     
    }
    
    private func configureGetBtn(isPurchased: Bool) {
        if isPurchased {
            self.btn.setImage(UIImage(systemName: "icloud.and.arrow.down")?.applyingSymbolConfiguration(.init(weight: .bold)), for: .normal)
            self.btn.setTitle("", for: .normal)
            self.btn.backgroundColor = .clear
           
        } else {
            self.btn.setImage(UIImage(), for: .normal)
            self.btn.setTitle("GET", for: .normal)
            self.btn.backgroundColor = .systemGray3.withAlphaComponent(0.75)
        }
    }
}

// MARK: - Layout

extension AppsCVC {
    
    func setupUIElements() {
        titleLbl.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        titleLbl.textColor = .systemBlue
        
        mainNameLbl.font = UIFont.preferredFont(forTextStyle: .title2)
        mainNameLbl.textColor = .label
        
        subtitleLbl.font = UIFont.preferredFont(forTextStyle: .title3)
        subtitleLbl.textColor = .secondaryLabel
        
        mainImage.clipsToBounds = true
        mainImage.layer.cornerRadius = 6
        mainImage.backgroundColor = .systemGray3
        mainImage.contentMode = .scaleAspectFill
        
        secondaryImage.contentMode = .scaleAspectFill
        secondaryImage.layer.cornerRadius = 12
        secondaryImage.clipsToBounds = true
        secondaryImage.backgroundColor = .systemBackground
        
        secondaryNameLbl.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        secondaryNameLbl.textColor = .white
        
        categoryLbl.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        categoryLbl.textColor = .white
        
        btn.tintColor = .white
        btn.backgroundColor = .systemGray3.withAlphaComponent(0.3)
        btn.clipsToBounds = true
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
    }
    
    func setupSubviews() {
        contentView.addSubview(containerView)
        containerView.addSubview(titleLbl)
        containerView.addSubview(mainNameLbl)
        containerView.addSubview(subtitleLbl)
        containerView.addSubview(mainImage)
        mainImage.addSubview(secondaryImage)
        mainImage.addSubview(secondaryNameLbl)
        mainImage.addSubview(categoryLbl)
        mainImage.addSubview(btn)
        
        configureConstraints()
    }

    func configureConstraints() {
        
        containerView.snp.makeConstraints { make in
            make.edges.equalTo(self.contentView.snp.edges)
            make.center.equalTo(self.contentView.snp.center)
        }
        
        titleLbl.snp.makeConstraints { make in
            make.left.equalTo(containerView.snp.left)
            make.top.equalTo(containerView.snp.top).offset(2)
            make.right.equalTo(containerView.snp.right).inset(36)
        }
        
        mainNameLbl.snp.makeConstraints { make in
            make.top.equalTo(titleLbl.snp.bottom).offset(2)
            make.right.equalTo(containerView.snp.right).inset(6)
            make.left.equalTo(containerView.snp.left)
        }
        
        subtitleLbl.snp.makeConstraints { make in
            make.top.equalTo(mainNameLbl.snp.bottom).offset(2)
            make.right.equalTo(containerView.snp.right).inset(6)
            make.left.equalTo(containerView.snp.left)
        }
        
        mainImage.snp.makeConstraints { make in
            make.top.equalTo(subtitleLbl.snp.bottom).offset(4)
            make.left.equalTo(containerView.snp.left)
            make.right.equalTo(containerView.snp.right)
            make.bottom.equalTo(containerView.snp.bottom)
            
        }
        
        secondaryImage.snp.makeConstraints { make in
            make.left.equalTo(mainImage.snp.left).offset(16)
            make.bottom.equalTo(mainImage.snp.bottom).inset(16)
            make.width.height.equalTo(50)
        }
        
        btn.snp.makeConstraints { make in
            make.right.equalTo(mainImage.snp.right).inset(14)
            make.centerY.equalTo(secondaryImage.snp.centerY)
            make.height.equalTo(30)
            make.width.equalTo(80)
            btn.layer.cornerRadius = 15
        }
        
        secondaryNameLbl.snp.makeConstraints { make in
            make.left.equalTo(secondaryImage.snp.right).offset(6)
            make.top.equalTo(secondaryImage.snp.top).offset(2)
            make.right.equalTo(btn.snp.left).inset(16)
        }
        
        categoryLbl.snp.makeConstraints { make in
            make.bottom.equalTo(secondaryImage.snp.bottom).inset(4)
            make.left.equalTo(secondaryNameLbl.snp.left)
            make.right.equalTo(secondaryNameLbl.snp.right)
        }
    }

}
