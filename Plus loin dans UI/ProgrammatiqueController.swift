//
//  ProgrammatiqueController.swift
//  Plus loin dans UI
//
//  Created by DUSSOULIER on 29/07/2018.
//  Copyright © 2018 DUSSOULIER. All rights reserved.
//

import UIKit

class ProgrammatiqueController: UIViewController {

    
    var monPremierUIView: UIView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIView?.backgroundColor = UIColor(red: 30/255, green: 123/255, blue: 90/255, alpha: 1)
        monPremierUIView?.layer.cornerRadius = 25
        guard monPremierUIView != nil else { return }
        view.addSubview(monPremierUIView!)
        print(monPremierUIView?.frame)
        print(monPremierUIView?.bounds)
        
        let secondeVue = UIView(frame: monPremierUIView!.frame)
        secondeVue.center.y += 100
        secondeVue.backgroundColor = .blue
        view.addSubview(secondeVue)
        
        let troisiemeVue = UIView(frame: monPremierUIView!.bounds)
        troisiemeVue.center.y += 200
        troisiemeVue.backgroundColor = .brown
        view.addSubview(troisiemeVue)
    }
    

}

