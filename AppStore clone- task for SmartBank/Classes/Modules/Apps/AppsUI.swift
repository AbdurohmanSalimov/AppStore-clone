//
//  AppsVC.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 06/07/23.
//

import UIKit
import SnapKit

extension AppsViewController {
    
    func createCollectionView() -> UICollectionView {
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout() )
        collectionView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        collectionView.backgroundColor = .systemBackground
        collectionView.showsVerticalScrollIndicator = true
        collectionView.contentInset.bottom = 200

        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(cellType: FeaturedCVC.self)
        collectionView.register(cellType: AppsCVC.self)
//        collectionView.register(cellType: HomeGuideCVC.self)
        
        collectionView.registerView(ofKind: .header, viewType: AppsReusableHeaderView.self)
        collectionView.registerView(ofKind: .header, viewType: TopReusableHeaderView.self)
        
        return collectionView
    }

}

//MARK: - Layout
extension AppsViewController {
    func addSubviews() {
        self.view.addSubview(self.collectionView)
    }

    
}

//MARK: - CompositionLayout
extension AppsViewController {
    
    func createLayout() -> UICollectionViewCompositionalLayout {
        let layout = UICollectionViewCompositionalLayout { [weak self] section, _ -> NSCollectionLayoutSection? in
            switch section {
            case 0:
                return self?.createFeaturedLayout()
            case 1:
                return self?.createAppsLayout()
            default:
                return self?.createFeaturedLayout()
            }
        }
        return layout
    }
    
    
    private func createFeaturedLayout() -> NSCollectionLayoutSection {
        let heightCell: CGFloat = 370
        let widthCell: CGFloat = UIScreen.main.bounds.width - 16
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                              heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(top: 8, leading: 8, bottom: .zero, trailing: 8)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(widthCell),
                                               heightDimension: .absolute(heightCell))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging

        
        return section
    }
    
    private func createAppsLayout() -> NSCollectionLayoutSection {
        let heightCell: CGFloat = 370
        let widthCell: CGFloat = UIScreen.main.bounds.width - 28
        let heightHeaderView: CGFloat = 80
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1.0/3.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(top: 8, leading: 8, bottom: .zero, trailing: 0)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 3) // <<<===
        group.interItemSpacing = .fixed(3.0)
        
        let rootGroupSize = NSCollectionLayoutSize(widthDimension: .absolute(widthCell), heightDimension: .absolute(220))
        let rootGroup = NSCollectionLayoutGroup.horizontal(layoutSize: rootGroupSize, subitems: [group])
        
        let section = NSCollectionLayoutSection(group: rootGroup)
        section.interGroupSpacing = 8
        section.orthogonalScrollingBehavior = .groupPaging
        
        let headerSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .absolute(heightHeaderView)
        )
        let header = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: headerSize,
            elementKind: UICollectionView.SupplymentaryViewKind.header.identifier,
            alignment: .topLeading
        )

        section.boundarySupplementaryItems = [header]
        section.supplementariesFollowContentInsets = false
        
        return section
    }
}
 
// MARK: LARGE TITLE
extension AppsViewController {
     
    private struct Const {
        /// Image height/width for Large NavBar state
        static let ImageSizeForLargeState: CGFloat = 48
        /// Margin from right anchor of safe area to right anchor of Image
        static let ImageRightMargin: CGFloat = 26
        /// Margin from bottom anchor of NavBar to bottom anchor of Image for Large NavBar state
        static let ImageBottomMarginForLargeState: CGFloat = 12
        /// Margin from bottom anchor of NavBar to bottom anchor of Image for Small NavBar state
        static let ImageBottomMarginForSmallState: CGFloat = 6
        /// Image height/width for Small NavBar state
        static let ImageSizeForSmallState: CGFloat = 32
        /// Height of NavBar for Small state. Usually it's just 44
        static let NavBarHeightSmallState: CGFloat = 44
        /// Height of NavBar for Large state. Usually it's just 96.5 but if you have a custom font for the title, please make sure to edit this value since it changes the height for Large state of NavBar
        static let NavBarHeightLargeState: CGFloat = 96.5
    }
     func setupUI() {
        navigationController?.navigationBar.prefersLargeTitles = true

        title = "Apps"

        // Initial setup for image for Large NavBar state since the the screen always has Large NavBar once it gets opened
        guard let navigationBar = self.navigationController?.navigationBar else { return }
        navigationBar.addSubview(imageViewM)
        imageViewM.layer.cornerRadius = Const.ImageSizeForLargeState / 2
        imageViewM.clipsToBounds = true
        imageViewM.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageViewM.rightAnchor.constraint(equalTo: navigationBar.rightAnchor,
                                             constant: -Const.ImageRightMargin),
            imageViewM.bottomAnchor.constraint(equalTo: navigationBar.bottomAnchor,
                                              constant: -Const.ImageBottomMarginForLargeState),
            imageViewM.heightAnchor.constraint(equalToConstant: Const.ImageSizeForLargeState),
            imageViewM.widthAnchor.constraint(equalTo: imageViewM.heightAnchor)
            ])
    }
     func moveAndResizeImage(for height: CGFloat) {
        let coeff: CGFloat = {
            let delta = height - Const.NavBarHeightSmallState
            let heightDifferenceBetweenStates = (Const.NavBarHeightLargeState - Const.NavBarHeightSmallState)
            return delta / heightDifferenceBetweenStates
        }()

        let factor = Const.ImageSizeForSmallState / Const.ImageSizeForLargeState

        let scale: CGFloat = {
            let sizeAddendumFactor = coeff * (1.0 - factor)
            return min(1.0, sizeAddendumFactor + factor)
        }()

        // Value of difference between icons for large and small states
        let sizeDiff = Const.ImageSizeForLargeState * (1.0 - factor) // 8.0

        let yTranslation: CGFloat = {
            /// This value = 14. It equals to difference of 12 and 6 (bottom margin for large and small states). Also it adds 8.0 (size difference when the image gets smaller size)
            let maxYTranslation = Const.ImageBottomMarginForLargeState - Const.ImageBottomMarginForSmallState + sizeDiff
            return max(0, min(maxYTranslation, (maxYTranslation - coeff * (Const.ImageBottomMarginForSmallState + sizeDiff))))
        }()

        let xTranslation = max(0, sizeDiff - coeff * sizeDiff)

        imageViewM.transform = CGAffineTransform.identity
            .scaledBy(x: scale, y: scale)
            .translatedBy(x: xTranslation, y: yTranslation)
    }
   
}

