//
//  AppDelegate.swift
//  MovieApp
//
//  Created by Sireesha Maddhela on 07/07/20.
//  Copyright © 2020 Sireesha Maddhela. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        setupStatusBar()
        setupAppearance()
        setupWindow()
        setupObservers()
        return true
    }
    
    func setupStatusBar() {
        //UIApplication.shared.statusBarFrame.
        //UIApplication.shared.windows.
        //UIApplication.shared.statusBarView?.backgroundColor = ColorPalette.yellow
    }
    
    func setupAppearance() {
        let navigationBarAppearance = UINavigationBar.appearance()
        navigationBarAppearance.barTintColor = ColorPicker.yellow
        navigationBarAppearance.tintColor = ColorPicker.black
        navigationBarAppearance.isTranslucent = true
        navigationBarAppearance.shadowImage = UIImage()
        navigationBarAppearance.backgroundColor = ColorPicker.yellow
        navigationBarAppearance.titleTextAttributes = [NSAttributedStringKey.foregroundColor : ColorPicker.black]
        navigationBarAppearance.setBackgroundImage(UIImage(), for: .default)
        
        let tabBarAppearance = UITabBar.appearance()
        tabBarAppearance.barTintColor = ColorPicker.yellow
        tabBarAppearance.tintColor = ColorPicker.black
        tabBarAppearance.isTranslucent = true
        tabBarAppearance.shadowImage = UIImage()
        tabBarAppearance.backgroundColor = ColorPicker.yellow
        
        UISearchBar.appearance().backgroundColor = ColorPicker.yellow
    }
    
    func setupWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.tintColor = ColorPicker.black
        
        let movieApi = MovieApiService()
        
        let popularViewController = PopularViewController(movieApi: movieApi)
        popularViewController.tabBarItem = UITabBarItem(title: "Popular", image: #imageLiteral(resourceName: "list_icon"), tag: 0)
        let popularNavigationController = UINavigationController(rootViewController: popularViewController)
        
        let favoritesViewController = FavoritesViewController()
        favoritesViewController.tabBarItem = UITabBarItem(title: "Favorites", image: #imageLiteral(resourceName: "favorite_empty_icon"), tag: 1)
        let favoritesNavigationController = UINavigationController(rootViewController: favoritesViewController)
        
        let rootViewController = RootViewController(popularNavigationController: popularNavigationController, favoritesNavigationController: favoritesNavigationController)
        
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
    }
    
    func setupObservers() {
        NotificationCenter.default.addObserver(forName: .onMovieFavorited, object: nil, queue: nil) { (notification) in
            if let movie = notification.userInfo?["movie"] as? Movie {
                var cachedMovies = Movie.getCachedMovies()
                
                if let isFavorite = movie.isFavorite, isFavorite {
                    cachedMovies.append(movie)
                } else {
                    if let index = cachedMovies.index(where: { $0 == movie }) {
                        cachedMovies.remove(at: index)
                    }
                }
                
                Movie.saveCachedMovies(cachedMovies)
            }
        }
    }
}

