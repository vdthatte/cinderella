//
//  Cinderella-ViewController.swift
//  princess
//
//  Created by Vidyadhar V. Thatte on 10/19/17.
//  Copyright © 2017 VdThatte. All rights reserved.
//

import UIKit

class Cinderella_ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

 
    var photos : [String] = ["hiqwertyuiopqawertyuiowertyuiopwertyuihiqwertyuiopqawertyuiowertyuiopwertyuiophiqwertyuiopqawertyuiowertyuiopwertyuiophiqwertyuiopqawertyuiowertyuiopwertyuiophiqwertyuiopqawertyuiowertyuiopwertyuiopop", "whatsup"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func testButtonAction(_ sender: Any) {
        print("I am a princess")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return self.photos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cinderella", for: indexPath) as! HomeTableViewCell
        
        cell.descr.text = self.photos[indexPath.row]
        
        //cell.profileImg.image =
        
        return cell
        
    }

}
