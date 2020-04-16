//
//  PropertiesTableViewController.swift
//  MyProperties
//
//  Created by praveen velanati on 4/16/20.
//  Copyright © 2020 praveen velanati. All rights reserved.
//

import UIKit


class PropertiesTableViewController: UITableViewController {
    
    var person = Person(name: "Praveen", properties: Person.getSectionData())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "My Properties"
    }
    
}

extension PropertiesTableViewController {
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return person.properties.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = person.properties[section]
        return section.list.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let propertySection = person.properties[section]
        return propertySection.id.rawValue.uppercased()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let item = person.properties[indexPath.section]
        let property = item.list[indexPath.row]
        cell.textLabel?.text = property.name
        cell.detailTextLabel?.text = property.description
        return cell
    }
    
}
