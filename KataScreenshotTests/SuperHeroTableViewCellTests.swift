//
//  SuperHeroTableViewCellTests.swift
//  KataScreenshot
//
//  Created by Sergio Gutiérrez on 09/01/17.
//  Copyright © 2017 Karumi. All rights reserved.
//

import UIKit
import XCTest
@testable import KataScreenshot

class SuperHeroTableViewCellTests: ScreenshotTest {
    
    func testShowsAnySuperHero() {
        let cell = givenASuperHeroTableViewCell()
        cell.configure(forItem: SuperHeroMother.givenASuperHero(isAvenger: false))
        verify(view: cell)
    }
    
    func testShowsAnyAvenger() {
        let cell = givenASuperHeroTableViewCell()
        cell.configure(forItem: SuperHeroMother.givenASuperHero(isAvenger: true))
        verify(view: cell)
    }
    
    func testShowsSuperHeroWithALongName() {
        let cell = givenASuperHeroTableViewCell()
        cell.configure(forItem: SuperHeroMother.givenASuperHero(name: "adaf sgsglkgs sdgklnasdlñl4234025wenvsdf fdf ffsh hfhjadjal 434", isAvenger: false))
        verify(view: cell)
    }

    private func givenASuperHeroTableViewCell() -> SuperHeroTableViewCell {
        return UINib(nibName: "SuperHeroTableViewCell", bundle: Bundle.main).instantiate(withOwner: self, options: nil)[0] as! SuperHeroTableViewCell
    }
}
