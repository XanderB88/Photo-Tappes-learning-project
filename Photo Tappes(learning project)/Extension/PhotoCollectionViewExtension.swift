//
//  PhotoCollectionViewExtension.swift
//  Photo Tappes(learning project)
//
//  Created by Alexander on 16.09.2021.
//

import UIKit

let itemsPerRow: CGFloat = 3
let sectionInserts = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)

extension PhotoCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingWidth: CGFloat = sectionInserts.left * (itemsPerRow + 1)
        let availableWidth: CGFloat = collectionView.frame.width - paddingWidth
        let widthOfItem = availableWidth / itemsPerRow
        return CGSize(width: widthOfItem, height: widthOfItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInserts
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }
}
