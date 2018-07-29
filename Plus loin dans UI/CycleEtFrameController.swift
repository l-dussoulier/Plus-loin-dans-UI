//
//  CycleEtFrameController.swift
//  Plus loin dans UI
//
//  Created by DUSSOULIER on 28/07/2018.
//  Copyright © 2018 DUSSOULIER. All rights reserved.
//

import UIKit

class CycleEtFrameController: UIViewController {

    @IBOutlet weak var vueFrameEtBounds: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View did load appelé")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View will Appear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View did appear")
        print("Frame -> : \(vueFrameEtBounds.frame)")
        print("Bounds -> : \(vueFrameEtBounds.bounds)")
        UIView.animate(withDuration: 2, animations: {
            self.vueFrameEtBounds.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi)/10)
        }) { (success) in
            print("Frame -> : \(self.vueFrameEtBounds.frame)")
            print("Bounds -> : \(self.vueFrameEtBounds.bounds)")
        }
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View will desappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View did disappead")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
