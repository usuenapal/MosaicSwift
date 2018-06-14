//
//  ViewController.swift
//  MosaicSwift
//
//  Created by Usue on 8/11/15.
//  Copyright © 2015 Usue. All rights reserved.
//

import UIKit

struct Links {
     static let arrayOfLinks: [String] = ["https://digitaldeleon.com/wp-content/uploads/2018/04/digitaldeleon-com-2018-04-20-10-0426-235824.jpg", "https://cdn1.royalcanin.es/wp-content/uploads/2017/01/gatos-de-interior.jpg", "https://www.notigatos.es/wp-content/uploads/2017/10/gato-encima-de-la-mesa-830x553.jpg", "http://fotografias.lasexta.com/clipping/cmsimages02/2016/03/13/9A1C357F-2FDD-4DD0-BFE5-5AAA2C81F6FB/58.jpg", "http://rumbos.viapais.com.ar/wp-content/uploads/2017/08/20170809183102_29384092_0_body-760x433-c-center.jpg", "https://www.hogarmania.com/archivos/201610/como-ven-los-gatos-XxXx80.jpg", "https://www.webconsultas.com/sites/default/files/styles/encabezado_articulo/public/articulos/intoxicacion-gatos.jpg?itok=ZEdt0aON", "http://3.bp.blogspot.com/-KZ0-FUd12Rw/U7Rs9WS2WzI/AAAAAAAAAA4/Eue_j6DV3uU/s1600/gato-siam%25C3%25A9s-muy-tierno.jpg", "https://static.vix.com/es/sites/default/files/styles/large/public/btg/curiosidades.batanga.com/files/8-sorprendentes-cosas-que-no-sabias-sobre-los-gatos-4.jpg?itok=SBwPbF17", "https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2017/11/274699-entender-gato.jpg?itok=UDpzBDsf"]
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

