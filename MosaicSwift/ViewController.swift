//
//  ViewController.swift
//  MosaicSwift
//
//  Created by Usue on 8/11/15.
//  Copyright © 2015 Usue. All rights reserved.
//

import UIKit

struct Links {
    static let arrayOfLinks: [String] = ["https://scontent-mad1-1.cdninstagram.com/hphotos-xpt1/t51.2885-15/e35/12093320_175788646097650_1777493373_n.jpg", "https://scontent-mad1-1.cdninstagram.com/hphotos-xfa1/t51.2885-15/e15/11374708_899719610075462_2079944361_n.jpg", "https://scontent-mad1-1.cdninstagram.com/hphotos-prn/t51.2885-15/e15/10453926_1525032927724797_562310669_n.jpg", "https://scontent-mad1-1.cdninstagram.com/hphotos-xpa1/t51.2885-15/e15/1172839_567556833321932_1527333660_n.jpg", "https://scontent-mad1-1.cdninstagram.com/hphotos-xtf1/t51.2885-15/e15/10513792_495014900600282_1769370509_n.jpg", "https://scontent-mad1-1.cdninstagram.com/hphotos-xpt1/t51.2885-15/e15/11267034_1587652828164926_739789033_n.jpg", "https://scontent-mad1-1.cdninstagram.com/hphotos-xat1/t51.2885-15/e15/10919668_1403608136601456_1011441104_n.jpg", "https://scontent-mad1-1.cdninstagram.com/hphotos-xpt1/t51.2885-15/e35/12070633_1679386142347942_1275333499_n.jpg", "https://scontent-mad1-1.cdninstagram.com/hphotos-xap1/l/t51.2885-15/e15/11372383_937098472979017_670472374_n.jpg", "https://scontent-mad1-1.cdninstagram.com/hphotos-xpa1/t51.2885-15/e15/11372175_104769283194557_114794195_n.jpg", "https://scontent-mad1-1.cdninstagram.com/hphotos-ash/t51.2885-15/e15/10723669_1572438389651503_1533272280_n.jpg", "https://scontent-mad1-1.cdninstagram.com/hphotos-xat1/t51.2885-15/e15/891457_764319533631305_2078191492_n.jpg", "https://scontent-mad1-1.cdninstagram.com/hphotos-xft1/t51.2885-15/e15/891425_1525578637671412_1116020074_n.jpg", "https://scontent-mad1-1.cdninstagram.com/hphotos-xap1/t51.2885-15/e15/1173072_677701488928350_961482092_n.jpg", "https://scontent-mad1-1.cdninstagram.com/hphotos-xtf1/t51.2885-15/e35/11351795_925257324218183_1231567850_n.jpg", "https://scontent-mad1-1.cdninstagram.com/hphotos-xft1/t51.2885-15/e35/11248985_1641164812807481_1190120378_n.jpg"]
}

class ViewController: MosaicCollectionViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.links = Links.arrayOfLinks
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}

