//
//  ChannelVC.swift
//  Smack
//
//  Created by Илья Маслиев on 11/02/2018.
//  Copyright © 2018 Masliev. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
