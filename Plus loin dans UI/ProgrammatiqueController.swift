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
    var monPremierLabel: UILabel?
    var monPremierBouton: UIButton?
    var maPermiereIV: UIImageView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIView?.backgroundColor = UIColor(red: 30/255, green: 123/255, blue: 90/255, alpha: 1)
        monPremierUIView?.layer.cornerRadius = 25
        guard monPremierUIView != nil else { return }
        view.addSubview(monPremierUIView!)
        
        monPremierLabel = UILabel(frame: CGRect(x: 0, y: monPremierUIView!.frame.maxY + 20, width: view.frame.width, height: 50))
        monPremierLabel?.text = "Coucou je suis un texte"
        monPremierLabel?.numberOfLines = 1
        monPremierLabel?.textColor = UIColor.white
        monPremierLabel?.font = UIFont(name: "Chalkduster", size: 20)
        monPremierLabel?.textAlignment = .center
        view.addSubview(monPremierLabel! )
        
        let rectDemonBouton = CGRect(x: view.frame.width / 2-75, y: monPremierLabel!.frame.maxY + 20, width: 150, height: 40)
        monPremierBouton = UIButton(frame: rectDemonBouton)
        monPremierBouton?.setTitle("Appuyer", for: UIControlState.normal)
        monPremierBouton?.tintColor = UIColor.red
        monPremierBouton?.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        monPremierBouton?.backgroundColor = UIColor.black
        monPremierBouton?.layer.borderColor = UIColor.white.cgColor
        monPremierBouton?.layer.borderWidth = 2
        view.addSubview(monPremierBouton!)
      
        
        monPremierBouton?.addTarget(self, action: #selector(boutonAppuye), for: .touchUpInside)
        
        
        let largeur = view.frame.width - 60
        let rectIV = CGRect(x: 30, y: (view.frame.height / 2)-(largeur / 3), width: largeur, height: largeur)
        maPermiereIV = UIImageView(frame: rectIV)
        maPermiereIV?.image = #imageLiteral(resourceName: "codabee")
        maPermiereIV?.contentMode = .scaleAspectFill
        
        maPermiereIV?.clipsToBounds = true
        maPermiereIV?.layer.cornerRadius = maPermiereIV!.frame.width / 2
        view.addSubview(maPermiereIV!)
        //view.sendSubview(toBack: maPermiereIV!)
          view.bringSubview(toFront: monPremierBouton!)
        
        maPermiereIV?.isUserInteractionEnabled = true
        maPermiereIV?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageAppuye)))
        
        
    }
    
    @objc func imageAppuye() {
        print ("Image touchée")
    }
    
    @objc func boutonAppuye() {
        print("tu as bien appyué")
    }
    

}

