//
//  AppsVC.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 06/07/23.
//


import UIKit

class AppsViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        presenter?.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.viewWillAppear()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        presenter?.viewWillDisappear()
    }

    // MARK: - Properties
    var presenter: ViewToPresenterAppsProtocol?
    var collectionView: UICollectionView!
    let imageViewM = UIImageView(image: UIImage(named: "Salimov2"))
    
}

extension AppsViewController: PresenterToViewAppsProtocol{
    // TODO: Implement View Output Methods
    
    func handleViewWillAppear() {
    }
    
    func handleViewWillDisappear() {
    }
}

// MARK: - UI Setup
extension AppsViewController {
    func createUIElements() {
        overrideUserInterfaceStyle = .light
        self.collectionView = self.createCollectionView()
        self.addSubviews()
    }
}

// MARK: - CollectionView Delegate & Data Source

extension AppsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
            guard let height = navigationController?.navigationBar.frame.height else { return }
            moveAndResizeImage(for: height)
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return presenter?.feturedDataResponse.count ?? 0
        case 1:
            return presenter?.appsDataResponse.count ?? 0 // default is 4 in presenter func
        default:
            return 4
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withCellType: FeaturedCVC.self, for: indexPath)
            cell.configure(data: (presenter?.feturedDataResponse[indexPath.row])!)
            
            return cell
            
        case 1:
            let cell = collectionView.dequeueReusableCell(withCellType: AppsCVC.self, for: indexPath)
            
            cell.configure(data: (presenter?.appsDataResponse[indexPath.row])!)
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withCellType: FeaturedCVC.self, for: indexPath)
//            switch indexPath.item {
//            case 0:
//                cell.titleLabel.text = "Umra qo’llanmasi"
//                cell.photoImageView.image = UIImage(named: "qo'llanma_img")
//            case 1:
//                cell.titleLabel.text = "Umra duolari"
//                cell.photoImageView.image = UIImage(named: "duolar_img")
//            case 2:
//                cell.titleLabel.text = "Safarga tayorgarlik"
//                cell.photoImageView.image = UIImage(named: "safar_img")
//            default:
//                cell.titleLabel.text = "Islom tarixiga oid joylar"
//                cell.photoImageView.image = UIImage(named: "tarix_img")
//            }
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {

        let viewKind = UICollectionView.SupplymentaryViewKind(identifier: kind)
        if viewKind == .header {
            switch indexPath.section {
      
            case 1:
                let header = collectionView.dequeueReusableView(ofKind: .header,
                                                                withViewType: AppsReusableHeaderView.self,
                                                                for:indexPath)
                header.label.text = "This Week`s Favourites"
                header.seeMoreButton.isHidden = false
                header.seeMoreTapped = { [weak self] in
//                    self?.presenter?.didSelectMore()
                }
                return header
            default:
                let header = collectionView.dequeueReusableView(ofKind: .header,
                                                                withViewType: TopReusableHeaderView.self,
                                                                for: indexPath)
                header.label.text = "Qo’llanma"
                header.userBtn.isHidden = true
                return header
            }
        } else {
            return UICollectionReusableView()
        }
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        switch indexPath.section {
//        case 0:
//            print("")
//        case 1:
//            presenter?.didSelectRowAt(indexPath: indexPath)
//        default:
//            presenter?.didSelectRowAt(indexPath: indexPath)
//        }
//    }
    
}

