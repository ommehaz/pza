//
//  TopInfoCollectionViewCell.swift
//  ommehaz
//
//  Created by Yusuf Tezel on 18/07/2018.
//  Copyright © 2018 ommehaz. All rights reserved.
//

import UIKit

class TopInfoCollectionViewCell: UICollectionViewCell {
    
    var headerText: UILabel = {
        var l = UILabel()
        l.text = "Din bestilling"
        l.font = UIFont(name: "Menlo-Bold", size: 14)
        return l
    }()
    
    var ordreText: UILabel = {
        var l = UILabel()
        l.text = "Ordrenr.: 284872"
        l.font = UIFont(name: "Menlo-Regular", size: 14)
        return l
    }()
    
    var dateText: UILabel = {
        var l = UILabel()
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        l.text = formatter.string(from: date)
        l.textAlignment = .right
        l.font = UIFont(name: "Menlo-Regular", size: 14)
        return l
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red:0.87, green:0.87, blue:0.87, alpha:1.0)
        addSubview(headerText)
        addSubview(ordreText)
        addSubview(dateText)
        
        headerText.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(10)
        }
        ordreText.snp.makeConstraints{
            $0.top.equalTo(headerText.snp.bottom).offset(10)
            $0.leading.equalToSuperview().offset(10)
            $0.width.equalTo(self.bounds.width / 2)
        }
        dateText.snp.makeConstraints{
            $0.top.equalTo(headerText.snp.bottom).offset(10)
            $0.trailing.equalToSuperview().offset(-10)
            $0.width.equalTo(self.bounds.width / 2)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
