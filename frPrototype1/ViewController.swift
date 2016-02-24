//
//  ViewController.swift
//  frPrototype1
//
//  Created by Anshul  Kapoor on 2/24/16.
//  Copyright © 2016 WanderingSanta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var V1 : View1 = View1(nibName: "View1", bundle: nil)
        var V2 : View2TableViewController = View2TableViewController(nibName: "View2TableViewController", bundle: nil)
        
        self.addChildViewController(V1)
        self.scrollView.addSubview(V1.view)
        V1.didMoveToParentViewController(self)
        
        self.addChildViewController(V2)
        self.scrollView.addSubview(V2.view)
        V2.didMoveToParentViewController(self)
        
        var V2Frame : CGRect = V2.view.frame
        V2Frame.origin.x = self.view.frame.width
        V2.view.frame = V2Frame
        
        self.scrollView.contentSize = CGSizeMake(self.view.frame.width * 2, self.view.frame.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

