//
//  ViewController.swift
//  FlexiCollectionViewLayout
//
//  Created by Deepak Kumar on 11/13/16.
//  Copyright © 2016 Deepak Kumar. All rights reserved.
//

import UIKit
import FlexiCollectionViewLayout

internal let cellReuseIdentifier = "HKCellReuseID"

final class ViewController: UICollectionViewController, FlexiCollectionViewLayoutDelegate {
    
    private let hongKongPhotos = [UIImage(named: "beach"), UIImage(named: "boat"),UIImage(named: "brucelee"),UIImage(named: "dragonboat"),UIImage(named: "icc"),UIImage(named: "icclightshow"),UIImage(named: "ifc"),UIImage(named: "island"),UIImage(named: "lantau"),UIImage(named: "oceanpark"),UIImage(named: "orange"),UIImage(named: "panda"),UIImage(named: "sunset"),UIImage(named: "thepeak"),UIImage(named: "tram")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = FlexiCollectionViewLayout()
        collectionView?.collectionViewLayout = layout
        registerSupplementaryViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func registerSupplementaryViews() {
        collectionView?.register(UINib(nibName: "HeaderView", bundle: nil), forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "HeaderReuseID")
        collectionView?.register(UINib(nibName: "FooterView", bundle: nil), forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "FooterReuseID")
    }

    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 28
        case 1:
            return 20
        default:
            return 24
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath) as! HKCell
        
        cell.imageView.image = hongKongPhotos[indexPath.item % hongKongPhotos.count]
        cell.infoLabel.text = "Image \(indexPath.row)"
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionElementKindSectionHeader {
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "HeaderReuseID", for: indexPath) as! HeaderView
            headerView.headerLabel.text = "Section \(indexPath.section)"
            return headerView
        } else if kind == UICollectionElementKindSectionFooter {
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "FooterReuseID", for: indexPath) as! FooterView
            footerView.footerLabel.text = "Footer \(indexPath.section)"
            return footerView
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: FlexiCollectionViewLayout, sizeForFlexiItemAt indexPath: IndexPath) -> ItemSizeAttributes {
        switch indexPath.row {
        case 0:
            return ItemSizeAttributes(itemSize: CGSize(width: 120, height: 100), layoutSize: FlexiCellSize.large, widthFactor: 2, heightFactor: 2)
        case 1:
            return ItemSizeAttributes(itemSize: CGSize(width: 120, height: 100), layoutSize: FlexiCellSize.regular, widthFactor: 1, heightFactor: 1)
        case 2:
            return ItemSizeAttributes(itemSize: CGSize(width: 120, height: 100), layoutSize: FlexiCellSize.regular, widthFactor: 1, heightFactor: 1)
        case 3:
            return ItemSizeAttributes(itemSize: CGSize(width: 120, height: 100), layoutSize: FlexiCellSize.large, widthFactor: 3, heightFactor: 1)
        case 4:
            return ItemSizeAttributes(itemSize: CGSize(width: 120, height: 100), layoutSize: FlexiCellSize.large, widthFactor: 1, heightFactor: 3)
        case 5:
            return ItemSizeAttributes(itemSize: CGSize(width: 120, height: 100), layoutSize: FlexiCellSize.regular, widthFactor: 1, heightFactor: 1)
        case 6:
            return ItemSizeAttributes(itemSize: CGSize(width: 120, height: 100), layoutSize: FlexiCellSize.regular, widthFactor: 1, heightFactor: 1)
        case 7:
            return ItemSizeAttributes(itemSize: CGSize(width: 120, height: 100), layoutSize: FlexiCellSize.large, widthFactor: 2, heightFactor: 1)
        case 8:
            return ItemSizeAttributes(itemSize: CGSize(width: 120, height: 100), layoutSize: FlexiCellSize.regular, widthFactor: 1, heightFactor: 1)
        case 9:
            return ItemSizeAttributes(itemSize: CGSize(width: 120, height: 100), layoutSize: FlexiCellSize.regular, widthFactor: 1, heightFactor: 1)
        case 10:
            return ItemSizeAttributes(itemSize: CGSize(width: 120, height: 100), layoutSize: FlexiCellSize.large, widthFactor: 1, heightFactor: 2)
        case 11:
            return ItemSizeAttributes(itemSize: CGSize(width: 120, height: 100), layoutSize: FlexiCellSize.large, widthFactor: 2, heightFactor: 2)
        default:
            return ItemSizeAttributes(itemSize: CGSize(width: 120, height: 100), layoutSize: FlexiCellSize.regular, widthFactor: 1, heightFactor: 1)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 1, bottom: 0, right: 1)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, heightForFooterInSection section: Int) -> CGFloat {
        return 45
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    
    //MARK: Helpers
    
    fileprivate func sizeBasedOnSizeClass() -> CGFloat {
        if DeviceUtilsHelper().isDeviceiPhoneInPortrait(traitCollection) {
            return self.collectionView!.bounds.size.width - 10
        } else {
            return (self.collectionView!.bounds.size.width - 14)/3
        }
    }
}

