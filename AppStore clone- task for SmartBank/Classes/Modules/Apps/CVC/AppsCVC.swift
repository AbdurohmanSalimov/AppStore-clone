//
//  AppsCVC.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 07/07/23.
//

import UIKit

class AppsCVC: UICollectionViewCell, ClassIdentifiable {
    
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
        image.image = UIImage(named: "google")
        image.layer.cornerRadius = 12
        image.layer.borderWidth = 0.35
        image.layer.borderColor = UIColor.systemGray2.withAlphaComponent(0.95).cgColor
        image.layer.backgroundColor = UIColor.white.cgColor
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    private lazy var btn: UIButton = {
        let btn = UIButton()
        btn.tintColor = .systemBlue
        btn.backgroundColor = .systemGray3.withAlphaComponent(0.3)
        btn.clipsToBounds = true
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        btn.setTitleColor(.systemBlue, for: .normal)

        return btn
    }()
    
    private lazy var appnameLbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        lbl.textColor = .label
        lbl.numberOfLines = 2
        return lbl
    }()
    
    private lazy var appCategoryLbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        lbl.textColor = .systemGray2
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureGetBtn(isPurchased: Bool) {
        if isPurchased {
            self.btn.setImage(UIImage(systemName: "icloud.and.arrow.down")?.applyingSymbolConfiguration(.init(weight: .bold)), for: .normal)
            self.btn.setTitle("", for: .normal)
            self.btn.backgroundColor = .clear
           
        } else {
            self.btn.setImage(UIImage(), for: .normal)
            self.btn.setTitle("GET", for: .normal)
            self.btn.backgroundColor = .systemGray3.withAlphaComponent(0.3)
        }
    }
    
    func configure(data: App) {
        self.appnameLbl.text = data.appName
        self.appLogoImageView.image = data.appImage
        self.appCategoryLbl.text = data.appCategory
        self.configureGetBtn(isPurchased: data.isPurchased ?? false)
     
    }
    
}

// MARK: - Layout

extension AppsCVC {
    
    func setupSubviews() {
        contentView.addSubview(containerView)
        containerView.addSubview(appLogoImageView)
        containerView.addSubview(appnameLbl)
        containerView.addSubview(appCategoryLbl)
        containerView.addSubview(btn)
        containerView.addSubview(lineView)
        configureConstraints()
    }

    func configureConstraints() {
        
        containerView.snp.makeConstraints { make in
            make.edges.equalTo(self.contentView.snp.edges)
            make.center.equalTo(self.contentView.snp.center)
        }
        
        appLogoImageView.snp.makeConstraints { make in
            make.left.equalTo(containerView.snp.left).offset(4)
            make.top.equalTo(containerView.snp.top).offset(2)
            make.width.height.equalTo(56)
            appLogoImageView.layer.cornerRadius = 12
        }
        
        btn.snp.makeConstraints { make in
            make.right.equalTo(containerView.snp.right).inset(8)
            make.centerY.equalTo(appLogoImageView.snp.centerY)
            make.height.equalTo(30)
            make.width.equalTo(80)
            btn.layer.cornerRadius = 14
        }
        
        appnameLbl.snp.makeConstraints { make in
            make.top.equalTo(appLogoImageView.snp.top).offset(6)
            make.right.equalTo(btn.snp.right).inset(6)
            make.left.equalTo(appLogoImageView.snp.right).offset(12)
        }
        
        appCategoryLbl.snp.makeConstraints { make in
            make.top.equalTo(appnameLbl.snp.bottom).offset(4)
            make.bottom.equalTo(appLogoImageView.snp.bottom)
            make.left.equalTo(appnameLbl.snp.left)
            make.right.equalTo(appnameLbl.snp.right)
        }
        lineView.snp.makeConstraints { make in
            make.left.equalTo(appnameLbl.snp.left)
            make.right.equalTo(containerView.snp.right)
            make.top.equalTo(appCategoryLbl.snp.bottom).offset(6)
            
        }
        
    }

}
