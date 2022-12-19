//
//  ViewController.swift
//  star-wars-characters
//
//  Created by Thiago Martins on 11/12/22.
//

import UIKit

class CharactersViewController: UIViewController {

    private weak var screenView: CharactersView? { self.view as? CharactersView }
    private var viewModel = CharactersViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenView?.tableView.delegate = self
        screenView?.tableView.dataSource = self
        getData()
    }
    
    override func loadView() {
        super.loadView()
        view = CharactersView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        createSpinnerView()
    }
    
    private func getData() {
        viewModel.fetchData(completion: {
            DispatchQueue.main.async {
                self.removeSpinnerView()
                self.screenView?.tableView.reloadData()
            }
        })
    }
}

extension CharactersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = screenView?.tableView.dequeueReusableCell(withIdentifier: CharacterTableViewCell.identifier) as? CharacterTableViewCell else {
            return UITableViewCell()
        }
        cell.setup(with: viewModel.characters[indexPath.row])
        
        return cell
    }
    
    func createSpinnerView() {
        let child = SpinnerViewController()

        // add the spinner view controller
        addChild(child)
        child.view.frame = view.frame
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
    
    func removeSpinnerView() {
        let child = children.first(where: { $0 is SpinnerViewController})
        child?.willMove(toParent: nil)
        child?.view.removeFromSuperview()
        child?.removeFromParent()
    }
}
