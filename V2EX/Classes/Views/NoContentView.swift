//
//  NotFoundView.swift
//  V2EX
//
//  Created by Jianqiu Xiao on 4/11/19.
//  Copyright © 2019 Jianqiu Xiao. All rights reserved.
//

import UIKit

class NoContentView: UIStackView {

    public  var textLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)

        alignment = .center

        isHidden = true

        textLabel = UILabel()
        textLabel.font = .preferredFont(forTextStyle: .title1)
        textLabel.textColor = .secondaryLabel
        addArrangedSubview(textLabel)
    }

    @available(*, unavailable)
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func didMoveToSuperview() {
        super.didMoveToSuperview()

        if let superview = superview {
            snp.makeConstraints { $0.center.equalTo(superview.safeAreaLayoutGuide) }
        }
    }
}
