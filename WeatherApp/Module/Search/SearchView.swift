//
//  SearchView.swift
//  WeatherApp
//
//  Created by unitlabs on 1/25/21.
//  Copyright © 2021 saraKhater. All rights reserved.
//

import UIKit

class SearchView: ViewController {
    //MARK:- define outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!

    //MARK:- define variables
    var presenter: SearchPresenterDelegate?
    let data = ["New York, NY", "Los Angeles, CA", "Chicago, IL", "Houston, TX",
           "Philadelphia, PA", "Phoenix, AZ", "San Diego, CA", "San Antonio, TX",
           "Dallas, TX", "Detroit, MI", "San Jose, CA", "Indianapolis, IN",
           "Jacksonville, FL", "San Francisco, CA", "Columbus, OH", "Austin, TX",
           "Memphis, TN", "Baltimore, MD", "Charlotte, ND", "Fort Worth, TX"]

    var filteredData: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Search"
        tableView.dataSource = self
        searchBar.delegate = self
        filteredData = data
    }

}


//MARK:- Extensions
extension SearchView :  UITableViewDataSource, UISearchBarDelegate{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.register(UINib(nibName: "SearchResultTableViewCell", bundle: nil), forCellReuseIdentifier: "SearchResultTableViewCell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchResultTableViewCell", for: indexPath) as! SearchResultTableViewCell
           cell.cityNameLabel?.text = filteredData[indexPath.row]
           return cell
       }

       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return filteredData.count
       }

       // This method updates filteredData based on the text in the Search Box
       func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
           // When there is no text, filteredData is the same as the original data
           // When user has entered text into the search box
           // Use the filter method to iterate over all items in the data array
           // For each item, return true if the item should be included and false if the
           // item should NOT be included
           filteredData = searchText.isEmpty ? data : data.filter { (item: String) -> Bool in
               // If dataItem matches the searchText, return true to include it
               return item.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
           }
           
           tableView.reloadData()
       }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
            self.searchBar.showsCancelButton = true
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            searchBar.showsCancelButton = false
            searchBar.text = ""
            searchBar.resignFirstResponder()
    }
}

extension SearchView: SearchDelegate {
    func error(notification: Notification) {

    }
}
