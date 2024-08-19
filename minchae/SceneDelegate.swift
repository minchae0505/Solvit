//
//  SceneDelegate.swift
//  minchae
//
//  Created by 양윤호 on 8/12/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        let navigationController = UINavigationController(rootViewController: ViewController())
        window?.rootViewController = navigationController // 루트 뷰컨트롤러 생성
        window?.makeKeyAndVisible()
    }
    
}
