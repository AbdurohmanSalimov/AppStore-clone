//
//  FeaturedCVC.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 06/07/23.
//

import UIKit

class FeaturedCVC: UICollectionViewCell, ClassIdentifiable {
    
    

    
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
    
    private lazy var mainImage: UIImageView = {
        let mainImage = UIImageView()
        mainImage.clipsToBounds = true
        mainImage.layer.cornerRadius = 6
        mainImage.backgroundColor = .systemGray3
        mainImage.contentMode = .scaleAspectFill
        
        return mainImage
    }()
    
    private lazy var btn: UIButton = {
        let btn = UIButton()
        btn.tintColor = .white
        btn.backgroundColor = .systemGray3.withAlphaComponent(0.3)
        btn.clipsToBounds = true
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)

        return btn
    }()
    
    private lazy var titleLbl: UILabel = {
        let titleLbl = UILabel()
        titleLbl.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        titleLbl.textColor = .systemBlue
        return titleLbl
    }()
    
    private lazy var mainNameLbl: UILabel = {
        let mainNameLbl = UILabel()
        mainNameLbl.font = UIFont.preferredFont(forTextStyle: .title2)
        mainNameLbl.textColor = .label
        return mainNameLbl
    }()
    
    private lazy var subtitleLbl: UILabel = {
        let subtitleLbl = UILabel()
        subtitleLbl.font = UIFont.preferredFont(forTextStyle: .title3)
        subtitleLbl.textColor = .secondaryLabel
        
        return subtitleLbl
    }()
    
    private lazy var secondaryImage: UIImageView = {
        let secondaryImage = UIImageView()
        secondaryImage.contentMode = .scaleAspectFill
        secondaryImage.layer.cornerRadius = 12
        secondaryImage.clipsToBounds = true
        secondaryImage.backgroundColor = .systemBackground
        
        return secondaryImage
    }()
    private lazy var secondaryNameLbl: UILabel = {
        let secondaryNameLbl = UILabel()
        secondaryNameLbl.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        secondaryNameLbl.textColor = .white
        
        return secondaryNameLbl
    }()
    
    private lazy var categoryLbl: UILabel = {
        let categoryLbl = UILabel()
        categoryLbl.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        categoryLbl.textColor = .white
        return categoryLbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(data: Section) {
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

extension FeaturedCVC {
    
    
    func setupSubviews() {
        contentView.addSubview(containerView)
        containerView.addSubview(lineView)
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
        
        lineView.snp.makeConstraints { make in
            make.top.equalTo(containerView.snp.top)
            make.left.equalTo(containerView.snp.left)
            make.right.equalTo(containerView.snp.right)
            make.height.equalTo(1)
        }
        
        titleLbl.snp.makeConstraints { make in
            make.left.equalTo(containerView.snp.left)
            make.top.equalTo(lineView.snp.top).offset(12)
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
            make.right.equalTo(mainImage.snp.right).inset(8)
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
