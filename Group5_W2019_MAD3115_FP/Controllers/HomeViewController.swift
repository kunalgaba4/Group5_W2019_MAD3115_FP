//
//  HomeViewController.swift
//  Group5_W2019_MAD3115_FP
//
//  Created by Cheeku on 2019-03-19.
//  Copyright © 2019 Cheeku. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tvProduct: UITableView!
    var allProducts = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationItem.setHidesBackButton(false, animated: false)
        tvProduct.delegate = self
        tvProduct.dataSource = self
        tvProduct.reloadData()
        allProducts.append(Product(name: "Camel", img: "check", price: 100.0, desc: "This is the camel"))
        allProducts.append(Product(name: "Tiger", img: "check", price: 100.0, desc: "This is the Tiger"))
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "product_details":
            let productDetailsController = segue.destination as! ProductDetailsViewController
            if let indexPath = self.tvProduct.indexPathForSelectedRow {
                productDetailsController.configureProductDescription(product: allProducts[indexPath.row])
            }
        default:
            break
        }
    }
 
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140.0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let product = allProducts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell") as! ProductTableViewCell
        cell.configureEachCell(product: product)
        return cell
    }
}
