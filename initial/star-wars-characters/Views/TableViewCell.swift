//
//  TableViewCell.swift
//  star-wars-characters
//
//  Created by Thiago Martins on 13/12/22.
//

import UIKit

class CharacterTableViewCell: UITableViewCell {
    
    public static let identifier = "CharacterTableViewCell"
    
    private let nameTitleLabel: UILabel = .makeLabel(text: "Nome:")
    private let birthYearTitleLabel: UILabel = .makeLabel(text: "Ano de Nascimento:")
    private let heigtTitleLabel: UILabel = .makeLabel(text: "Altura:")
    private let speciesTitleLabel: UILabel = .makeLabel(text: "Espécie:")
    
    private let nameLabel: UILabel = .makeLabel()
    private let birthYearLabel: UILabel = .makeLabel()
    private let heigtLabel: UILabel = .makeLabel()
    private let speciesLabel: UILabel = .makeLabel()
    
    private let nameStack: UIStackView = .makeStack()
    private let birthYearStack: UIStackView = .makeStack()
    private let heigtStack: UIStackView = .makeStack()
    private let speciesStack: UIStackView = .makeStack()
    
    private let verticalStack: UIStackView = .makeStack(axis: .vertical)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubviews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        addSubview(verticalStack)
        
        verticalStack.addArrangedSubview(nameStack)
        verticalStack.addArrangedSubview(birthYearStack)
        verticalStack.addArrangedSubview(heigtStack)
        verticalStack.addArrangedSubview(speciesStack)
        
        nameStack.addArrangedSubview(nameTitleLabel)
        nameStack.addArrangedSubview(nameLabel)
        
        birthYearStack.addArrangedSubview(birthYearTitleLabel)
        birthYearStack.addArrangedSubview(birthYearLabel)
        
        heigtStack.addArrangedSubview(heigtTitleLabel)
        heigtStack.addArrangedSubview(heigtLabel)
        
        speciesStack.addArrangedSubview(speciesTitleLabel)
        speciesStack.addArrangedSubview(speciesLabel)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            verticalStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            verticalStack.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -16),
            verticalStack.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            verticalStack.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
        ])
    }
}
