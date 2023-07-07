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
    var refreshControl: UIRefreshControl!
    let imageViewM = UIImageView(image: UIImage(named: "Salimov2"))
    var appCateforiesSection: Int?
    
    // MARK: - Actions
    @objc func refresh() {
        presenter?.refresh()
    }
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
    
    func updateUI() {
        self.appCateforiesSection = (presenter?.lastSection ?? 0) - 1
        self.collectionView.reloadData()
        self.refreshControl.endRefreshing()
        
    }
    
    func createUIElements() {
        overrideUserInterfaceStyle = .light
        self.collectionView = self.createCollectionView()
        self.refreshControl = self.create_refreshController()
        self.addSubviews()
        self.refreshControl.beginRefreshing()
        print("🦷 create UI elements",appCateforiesSection)
        
    }
}

// MARK: - CollectionView Delegate & Data Source

extension AppsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
            guard let height = navigationController?.navigationBar.frame.height else { return }
            moveAndResizeImage(for: height)
        print("🦷 App categories sections",presenter?.getTotalNumberOfSection())
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return presenter?.getTotalNumberOfSection() ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        appCateforiesSection = (presenter?.lastSection ?? 0) - 1
        switch section {
        case 0:
            return presenter?.getFeaturedCategoryNumberOfItems() ?? 0
            
        case appCateforiesSection:
            print("🦷 number of items",appCateforiesSection)
            return presenter?.getAppCategoryNumberOfItems() ?? 0
        default:
            return presenter?.getAppNumberOfItems(atSection: section) ?? 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withCellType: FeaturedCVC.self, for: indexPath)
            cell.configure(data: (presenter?.feturedDataResponse?[indexPath.row])!)
            
            return cell
            
        case appCateforiesSection:
            print("🦷 case celll for item",appCateforiesSection)
            let cell = collectionView.dequeueReusableCell(withCellType: TopCategoriesCVC.self, for: indexPath)
            if let dataSafe = presenter?.appCategories?[indexPath.row] {
            cell.configure(data: dataSafe)
            }

            return cell
        
        default:
            let cell = collectionView.dequeueReusableCell(withCellType: AppsCVC.self, for: indexPath)
            if let dataSafe = presenter?.appsDataResponse?[indexPath.section - 1].apps[indexPath.row] {
                cell.configure(data: dataSafe)
            }
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
                header.label.text = presenter?.appsDataResponse?[indexPath.section - 1].title
                header.seeMoreTapped = { [weak self] in
                    self?.presenter?.seeAll(at: indexPath)
                }
                return header
                
            case appCateforiesSection:
                print("🦷 header suplimentory-",appCateforiesSection)
                let header = collectionView.dequeueReusableView(ofKind: .header,
                                                                withViewType: AppsReusableHeaderView.self,
                                                                for:indexPath)
                header.label.text = "Top Categories"
                header.seeMoreTapped = { [weak self] in
                    self?.presenter?.seeAll(at: indexPath)
                }
                return header
            default:
                let header = collectionView.dequeueReusableView(ofKind: .header,
                                                                withViewType: AppsReusableHeaderView.self,
                                                                for:indexPath)
                header.label.text = presenter?.appsDataResponse?[indexPath.section - 1].title
                header.seeMoreTapped = { [weak self] in
                    self?.presenter?.seeAll(at: indexPath)
                    
                }
                return header
            }
        }
        return UICollectionReusableView()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        presenter?.didSelectItem(at: indexPath)
    }
    
}

