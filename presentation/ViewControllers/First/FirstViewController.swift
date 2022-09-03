//
//  FirstVC.swift
//  presentation
//
//  Created by Nazim Asadov on 29.08.22.
//

import UIKit
import SnapKit
import domain

public class FirstViewController: BaseViewController<FirstViewModel> {
    
    private lazy var testLabel: UILabel = {
       let lbl = UILabel()
        
        lbl.text = "Hello everyone"
        lbl.textAlignment = .center
        lbl.textColor = .cyan
        lbl.getFont(name: "Poppins-ExtraLight")
        
        return lbl
    }()
    
    
    private lazy var testImage: UIImageView = {
       let img = UIImageView()
        
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "Group-6")
//        img.backgroundColor = .red
        return img
    }()

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
       
        view.addSubview(testLabel)
        view.addSubview(testImage)
        

        
        testLabel.snp.makeConstraints { make in
            make.center.equalTo(view.center)
        }
        
        testImage.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.centerX.equalTo(testLabel.snp.centerX)
            make.top.equalTo(testLabel.snp.bottom).offset(20)
        }
    }
}
