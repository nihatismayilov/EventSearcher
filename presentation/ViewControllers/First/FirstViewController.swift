//
//  FirstVC.swift
//  presentation
//
//  Created by Nazim Asadov on 29.08.22.
//

import UIKit
import SnapKit

public class FirstViewController: BaseViewController<FirstViewModel> {
    
    private lazy var testLabel: UILabel = {
       let lbl = UILabel()
        
        lbl.text = "Hello everyone"
        lbl.textAlignment = .center
        lbl.textColor = .cyan
        lbl.getFont(name: "Poppins-ExtraLight")
        
        return lbl
    }()

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
       
        self.view.addSubview(testLabel)
        testLabel.snp.makeConstraints { make in
            make.center.equalTo(view.center)
        }
    }
}
