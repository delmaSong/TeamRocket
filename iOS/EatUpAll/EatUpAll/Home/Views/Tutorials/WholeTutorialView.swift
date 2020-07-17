//
//  WholeTutorialView.swift
//  EatUpAll
//
//  Created by delma on 2020/07/17.
//  Copyright © 2020 team rocket. All rights reserved.
//

import UIKit

final class WholeTutorialView: UIView {
    @IBOutlet weak var frameView: UIView!
    @IBOutlet weak var firstView: TutorialFirstView!
    @IBOutlet weak var secondView: TutorialSecondView!
    @IBOutlet weak var thirdView: TutorialThirdView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        Bundle.main.loadNibNamed(String(describing: Self.self), owner: self, options: nil)
        addSubview(frameView)
        frameView.frame = self.bounds
        configureUI()
    }
    
    private func configureUI() {
        firstView.roundCorner(cornerRadius: 10)
        secondView.roundCorner(cornerRadius: 10)
        thirdView.roundCorner(cornerRadius: 10)
    }
}
