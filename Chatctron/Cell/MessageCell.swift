//
//  MessageCell.swift
//  Chatctron
//
//  Created by Hanlin Chen on 8/10/20.
//  Copyright © 2020 Hanlin Chen. All rights reserved.
//


import UIKit


class MessageCell: BaseTableCell {
    let messageLabel: UILabel =  {
        let label = UILabel()
        label.textColor = .black
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let bubbleView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0.95, alpha: 1)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    override func setupCell() {
        super.setupCell()
        addSubview(bubbleView)
        addSubview(messageLabel)
        
        selectionStyle = .none
        let constraints = [
            
            messageLabel.topAnchor.constraint(equalTo: topAnchor, constant: 32),
            messageLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -32),
            messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            messageLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 250),
            
            bubbleView.topAnchor.constraint(equalTo: messageLabel.topAnchor, constant: -16),
            bubbleView.leadingAnchor.constraint(equalTo: messageLabel.leadingAnchor, constant: -16),
            bubbleView.bottomAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 16),
            bubbleView.trailingAnchor.constraint(equalTo: messageLabel.trailingAnchor, constant: 16),
            
            
            
        ]
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    
}

