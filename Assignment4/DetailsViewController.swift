//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by Yuki Tsukada on 2020/12/16.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var city: City!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        let countriyLabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 50, y: view.bounds.height / 2 - 250, width: 100, height: 20))
        countriyLabel.text = "Country"
        countriyLabel.textAlignment = .center
        countriyLabel.font = UIFont.boldSystemFont(ofSize: 14)
        
        
        let nationalFlag = UILabel(frame: CGRect(x: view.bounds.width / 2 - 50, y: view.bounds.height / 2 - 185, width: 100, height: 20))
        if city.icon == "canada" {
            nationalFlag.text = "🇨🇦"
        } else if city.icon == "italy" {
            nationalFlag.text = "🇮🇹"
        } else if city.icon == "japan" {
            nationalFlag.text = "🇯🇵"
        } else if city.icon == "brazil" {
            nationalFlag.text = "🇧🇷"
        } else if city.icon == "skorea" {
            nationalFlag.text = "🇰🇷"
        } else {
            nationalFlag.text = city.icon.capitalized
        }
        nationalFlag.textAlignment = .center
        nationalFlag.font = UIFont(name: "Helvetica Neue", size: 20)
        
        
        let cityLabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 50, y: view.bounds.height / 2 - 120, width: 100, height: 20))
        cityLabel.text = "City"
        cityLabel.textAlignment = .center
        cityLabel.font = UIFont.boldSystemFont(ofSize: 14)

        
        let cityNameLabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 50, y: view.bounds.height / 2 - 55, width: 100, height: 20))
        cityNameLabel.text = city.name
        cityNameLabel.textAlignment = .center
        cityNameLabel.font = UIFont(name: "Helvetica Neue", size: 20)
        
        
        let temperatureLabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 + 10, width: 200, height: 20))
        temperatureLabel.text = "Temperature"
        temperatureLabel.textAlignment = .center
        temperatureLabel.font = UIFont.boldSystemFont(ofSize: 14)

        
        
        let cityTemperatureLabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 50, y: view.bounds.height / 2 + 75, width: 100, height: 20))
        cityTemperatureLabel.text = String(city.temp)
        cityTemperatureLabel.textAlignment = .center
        cityTemperatureLabel.font = UIFont(name: "Helvetica Neue", size: 20)
        
        
        let summaryLabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 + 140, width: 200, height: 20))
        summaryLabel.text = "Summary"
        summaryLabel.textAlignment = .center
        summaryLabel.font = UIFont.boldSystemFont(ofSize: 14)

        
        let weatherLabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 50, y: view.bounds.height / 2 + 205, width: 100, height: 20))
        weatherLabel.text = city.summary
        weatherLabel.textAlignment = .center
        weatherLabel.font = UIFont(name: "Helvetica Neue", size: 20)
        
        
        view.addSubview(countriyLabel)
        view.addSubview(nationalFlag)
        view.addSubview(cityLabel)
        view.addSubview(cityNameLabel)
        view.addSubview(temperatureLabel)
        view.addSubview(cityTemperatureLabel)
        view.addSubview(summaryLabel)
        view.addSubview(weatherLabel)
    }
}
