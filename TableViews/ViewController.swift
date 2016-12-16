//
//  ViewController.swift
//  TableViews
//
//  Created by Dave Schumaker on 12/15/16.
//  Copyright © 2016 Schumaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var displayValue: UILabel!
    @IBOutlet weak var table: UITableView!
    
    @IBAction func sliderChange(_ sender: Any) {
        let getInt = Int(slider.value)
        displayValue.text = String(getInt)
        table.reloadData()
        
    }
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }

    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        let generateString = "\(indexPath.row) x \(Int(slider.value)) = \(indexPath.row * Int(slider.value))"
        
        cell.textLabel?.text = generateString
        
        return cell
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

