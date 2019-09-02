//
//  DataViewController.swift
//  JsonApp
//
//  Created by macbook on 23/08/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    var drink: [Cocktail] = []
    private let jsonUrl = "https://www.thecocktaildb.com/api/json/v1/1/random.php"
    
    
    @IBOutlet var coctailImage: UIImageView!
    @IBOutlet var coctailName: UILabel!
    @IBOutlet var coctailAlcoholic: UILabel!
    @IBOutlet var coctailFirstIngridient: UILabel!
    @IBOutlet var coctailSecondIngridient: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Vava \(drink)")
        //configure(with: drink[0])
        //print(cocktail ?? "bb")
        // Do any additional setup after loading the view.
    }
    
    
    func configure(with cocktail: Cocktail) {
        coctailName.text = cocktail.strDrink
        coctailAlcoholic.text = cocktail.strAlcoholic
        coctailFirstIngridient.text = cocktail.strIngredient1
        coctailSecondIngridient.text = cocktail.strIngredient2

//        DispatchQueue.global().async {
//            guard let imageUrl = URL(string: cocktail.strDrinkThumb!) else { return }
//            guard let imageData = try? Data(contentsOf: imageUrl) else { return }
//
//            DispatchQueue.main.async {
//                self.coctailImage.image = UIImage(data: imageData)
//            }
//        }

    }
    
    
    func fetchData() {
        guard let url = URL(string: jsonUrl) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            do {
                let cocktailDescription = try JSONDecoder().decode(CocktailDescription.self, from: data)
                print(cocktailDescription.drinks ?? ["errorAhtung"])
                self.drink = cocktailDescription.drinks!
                print("Vava 2 \(self.drink)")
            } catch let error {
                print(error)
            }
            
            }.resume()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
