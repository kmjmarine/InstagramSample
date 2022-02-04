//
//  ProfileDataView.swift
//  InstagramSample
//
//  Created by kmjmarine on 2022/02/02.
//

import UIKit
import SnapKit

final class ProfileDataView: UIView {
    private let title: String
    private let count: Int
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14.0, weight: .medium)
        label.text = title
        
        return label
    }()
    
    private lazy var countLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16.0, weight: .bold)
        label.text = "\(count)"
        
        return label
    }()
    
    init(title: String, count: Int) {
        self.title = title
        self.count = count
        
        super.init(frame: .zero)
        
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension ProfileDataView {
    func setLayout() {
        let labelStackView = UIStackView(arrangedSubviews: [countLabel, titleLabel])
        labelStackView.axis = .vertical
        labelStackView.alignment = .center
        labelStackView.spacing = 4.0
        
        addSubview(labelStackView)
        
        labelStackView.snp.makeConstraints { $0.edges.equalToSuperview() }
    }
}
