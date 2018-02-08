//
//  CategoryTableVIew.swift
//  CodeProject
//
//  Created by mac on 2018/2/7.
//  Copyright © 2018年 -. All rights reserved.
//

import UIKit

// MARK: CategoryTableCell
class CategoryTableCell: UITableViewCell {
    
    public var lblTitle: UILabel?
    public var lblSummary: UILabel?
    public var lblAuthor: UILabel?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        lblTitle = UILabel()
        lblSummary = UILabel()
        lblAuthor = UILabel()
        
        lblTitle?.textColor = UIColor.black
        lblTitle?.font = UIFont.systemFont(ofSize: 17)
        
        lblSummary?.textColor = UIColor.lightGray
        lblSummary?.font = UIFont.systemFont(ofSize: 14)
        lblSummary?.numberOfLines = 3
        
        lblAuthor?.textColor = UIColor.lightGray
        lblAuthor?.font = UIFont.systemFont(ofSize: 13)
        
        self.contentView.addSubview(lblTitle!)
        self.contentView.addSubview(lblSummary!)
        self.contentView.addSubview(lblAuthor!)
        
        lblTitle?.snp.makeConstraints { (make) in
            make.top.equalTo(10)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.3)
        }
        
        lblSummary?.snp.makeConstraints { (make) in
            make.top.equalTo(lblTitle!.snp.bottom)
            make.centerX.equalToSuperview()
            make.width.equalTo(lblTitle!.snp.width)
            make.height.equalToSuperview().multipliedBy(0.4)
        }
        
        lblAuthor?.snp.makeConstraints { (make) in
            make.top.equalTo(lblSummary!.snp.bottom)
            make.centerX.equalToSuperview()
            make.width.equalTo(lblTitle!.snp.width)
            make.height.equalToSuperview().multipliedBy(0.2)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

let strCategoryTableCell = "categoryCell"

// MARK: CategoryTableView
class CategoryTableVIew: UITableView, UITableViewDataSource, UITableViewDelegate {

    public var dataArray: NSArray?
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        
        self.rowHeight = 200
        self.separatorStyle = UITableViewCellSeparatorStyle.none
        
        self.register(CategoryTableCell.self, forCellReuseIdentifier: strCategoryTableCell)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (dataArray?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CategoryTableCell = CategoryTableCell.init(style: UITableViewCellStyle.default, reuseIdentifier: strCategoryTableCell)
        
        cell.lblTitle!.text = "sss"
        cell.lblSummary!.text = "aaa"
        cell.lblAuthor!.text = "ddd"
        
        return cell
    }
    
    //MARK: UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
