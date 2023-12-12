//
//  AppDelegate.swift
//  GoodWeather
//
//  Created by koala panda on 2023/11/19.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        //ナビゲーションバーの色を指定
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(displayP3Red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0)
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        
        UIBarButtonItem.appearance().tintColor = UIColor.white
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    
        setupDefaultSettings()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    ///デフォルト設定をセットアップするプライベートメソッド
    private func setupDefaultSettings() {
        
        //UserDefaultsのインスタンスを取得
        let userDefaults = UserDefaults.standard
        //もし"unit"キーに値が設定されていなければ、デフォルト値をセット
        if userDefaults.value(forKey: "unit") == nil {
            //デフォルトとして華氏をセット
            userDefaults.set(Unit.fahrenheit.rawValue, forKey: "unit")
        }
        
    }
}

