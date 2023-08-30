//
//  CustomCollectionViewCell.swift
//  CollectionViewCustomCell
//
//  Created by Tony Chen on 13/4/2023.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    static let identifier = "CustomCollectionViewCell"
    
    lazy var imageView: UIImageView = {
        var imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = UIImage(systemName: "house")
        //imageView.backgroundColor = .orange
        return imageView
    }()
    
    lazy var label: UILabel = {
        var label = UILabel()
        label.text = "Custom"
        //label.backgroundColor = .green
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        contentView.addSubview(label)
        //contentView.backgroundColor = .systemRed
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = CGRect(x: 5, y: 0, width: contentView.frame.size.width-5, height: contentView.frame.size.height-50)
        label.frame = CGRect(x: 5, y: contentView.frame.size.height-70, width: contentView.frame.size.width-5, height: 50)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(text: String) {
        label.text = text
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        label.text = nil
    }

}
