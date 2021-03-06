//
//  GenericCollectionViewCell.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import UIKit

class GenericCollectionViewCell<DataType, ViewType: GenericBaseView<DataType>>: BaseCollectionViewCell {
    
    lazy var genericView: ViewType = {
        let temp = ViewType()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    override func addMajorViews() {
        super.addMajorViews()
        
        contentView.addSubview(genericView)
        
        NSLayoutConstraint.activate([
        
            genericView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            genericView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            genericView.topAnchor.constraint(equalTo: contentView.topAnchor),
            genericView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
        ])
    }
    
    func setRowData(data: DataType) {
        genericView.setData(by: data)
    }
}
