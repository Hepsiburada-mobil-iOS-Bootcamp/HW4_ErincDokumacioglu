//
//  GenericBaseView.swift
//  PermissionProject
//
//  Created by Erkut Bas on 25.09.2021.
//

import Foundation
import UIKit

class GenericBaseView<T>: BaseView {
    
    private var data: T?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public init(frame: CGRect = .zero, data: T? = nil) {
        self.data = data
        super.init(frame: frame)
        loadDataView()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func loadDataView() {
        
    }
    
    func setData(by value: T?) {
        self.data = value
        loadDataView()
    }
    
    func returnData() -> T? {
        return data
    }
    
    
}
