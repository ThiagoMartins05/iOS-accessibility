//
//  ViewController.swift
//  star-wars-characters
//
//  Created by Thiago Martins on 11/12/22.
//

import UIKit

class CharactersViewController: UIViewController {

    private weak var screenView: CharactersView? { self.view as? CharactersView }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenView?.tableView.delegate = self
        screenView?.tableView.dataSource = self
    }
    
    override func loadView() {
        super.loadView()
        view = CharactersView()
    }
}

extension CharactersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
