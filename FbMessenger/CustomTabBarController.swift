//
//  CustomTabBarController.swift
//  FbMessanger
//



import UIKit

class CustomTabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        let friendsController = FriendsController(collectionViewLayout: layout)
        let recentMessagesNavController = UINavigationController(rootViewController: friendsController)
        recentMessagesNavController.tabBarItem.title = "Recent"
        recentMessagesNavController.tabBarItem.image = UIImage(named: "recent")
        
        viewControllers = [recentMessagesNavController,createDummyNavController(title: "Calls", imageName: "calls"),createDummyNavController(title: "Groups", imageName: "groups"),createDummyNavController(title: "People", imageName: "people"),createDummyNavController(title: "Settings", imageName: "settings")]
    }
    
    private func createDummyNavController(title: String , imageName: String) -> UINavigationController{
        let vC = UIViewController()
        let nC = UINavigationController(rootViewController: vC)
        nC.tabBarItem.title = title
        nC.tabBarItem.image = UIImage(named: imageName)
        return nC
    }
}
