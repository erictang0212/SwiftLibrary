//
//  LeftAlignedCollectionViewFlowLayout.swift
//  LetsGo
//
//  Created by Eddie Ou on 2021/7/4.
//

import UIKit

class LeftAlignedCollectionViewFlowLayout: UICollectionViewFlowLayout {
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        // 取得可見範圍內的 layout attributes
        let attributes = super.layoutAttributesForElements(in: rect)
        
        // 初始化左邊距及 maxY
        var leftMargin = sectionInset.left
        var maxY: CGFloat = -1.0
        
        // 遍歷每個 layout attribute
        attributes?.forEach { layoutAttribute in
            
            // 如果當前的 layout attribute 為 header，重設左邊距
            if layoutAttribute.representedElementKind == UICollectionView.elementKindSectionHeader {
                leftMargin = sectionInset.left
            }
            
            // 如果當前的 layout attribute 為 footer，重設左邊距
            if layoutAttribute.representedElementKind == UICollectionView.elementKindSectionFooter {
                leftMargin = sectionInset.left
            }
            
            // 如果當前的 layout attribute 的 y 座標大於 maxY，重設左邊距
            if layoutAttribute.frame.origin.y >= maxY {
                leftMargin = sectionInset.left
            }
            
            // 設置 layout attribute 的 x 座標
            layoutAttribute.frame.origin.x = leftMargin
            
            // 更新左邊距及 maxY
            leftMargin += layoutAttribute.frame.width + minimumInteritemSpacing
            maxY = max(layoutAttribute.frame.maxY , maxY)
        }
        
        // 返回所有 layout attributes
        return attributes
    }

}
