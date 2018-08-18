//
//  QueryTypeSelectorTableViewController.swift
//  iCloudChallenge
//
//  Created by Aluno on 18/08/18.
//  Copyright © 2018 Guilherme Rambo. All rights reserved.
//

import UIKit

class QueryTypeSelectorTableViewController: UITableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier, let queryType = QueryType(rawValue: identifier) else {
            fatalError("Unknown query type \(String(describing: segue.identifier))")
        }
        
        guard let destination = segue.destination as? QueryTableViewController else {
            fatalError("Query type segue destination must be a QueryTableViewController")
        }
        
        destination.queryType = queryType
    }
}
