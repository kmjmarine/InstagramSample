//
//  ProfileCollectionViewCell.swift
//  InstagramSample
//
//  Created by kmjmarine on 2022/02/04.
//

import UIKit
import SnapKit

final class ProfileCollectionViewCell: UICollectionViewCell {
    private let imageView = UIImageView ()
    
    func setUp(with image: UIImage) {
        addSubview(imageView)
        imageView.snp.makeConstraints { $0.edges.equalToSuperview() }
        
        imageView.backgroundColor = .tertiaryLabel
    }
}
