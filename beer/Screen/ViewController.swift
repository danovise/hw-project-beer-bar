//
//  ViewController.swift
//  beer
//
//  Created by Daria Sechko on 25.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameBar: UILabel!
    @IBOutlet weak var informationTextView: UITextView!
    @IBOutlet weak var newDayButton: UIButton!
    @IBOutlet weak var revenueLabel: UILabel!
    @IBOutlet weak var stockBeerLabel: UILabel!
    @IBOutlet weak var thanksLabel: UILabel!
    @IBOutlet weak var buyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameBar.text = "Гиннесс"
        self.stockBeerLabel.text = "В наличии осталось \(stock) мл"
        self.buyButton.setTitle("Купить вкусного пива", for: .normal)
        self.newDayButton.setTitle("Новый рабочий день", for: .normal)
        thanksLabel.text = "Бери смело, не пожалеешь ;)"
        revenueLabel.text = "Выручка: 0"
        self.informationTextView.text = "Guinness  — легендарное пиво, гордость Ирландии. История марки начинается в середине 18 века, когда Артур Гиннесс, получив наследство, решает открыть пивоварню. Сначала он варил классический эль, но потом по неизвестным ныне причинам, попробовал сварить темное пиво. Первая партия Guinness была продана в начале 90-х годов."
    }
    var stock = 1000
    var volume = 100
    var price = 10
    var revenue = 0
    
    //MARK: - Action
    @IBAction func buyButtonAction(_ sender: UIButton) {
        self.thanksLabel.text = "Приятного отдыха!"
        var button = UIButton(type: .custom)
        button.addTarget(self, action: #selector(buyButtonAction), for: .touchUpInside)
        self.stock -= volume
        self.revenue += price
        self.stockBeerLabel.text = "В наличии осталось \(stock) мл"
        self.revenueLabel.text = "Выручка: \(revenue)"
    }
    
    @IBAction func newDayAction(_ sender: Any) {
        revenue = 0
        self.revenueLabel.text = "Выручка: \(revenue)"
    }
}

