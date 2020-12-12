//
//  AssemblyModuleBuilder.swift
//  JobVar
//
//  Created by Hamid Manafov on 23.11.20.
//

import UIKit

protocol AsseblyBuilderProtocol {
    func creatMainModule(router: RouterProtocol) -> UIViewController
    func creatDetailModule(router: RouterProtocol, testArray: FeedResponse?) -> UIViewController
    func creatJobVacanxyModule(router: RouterProtocol) -> UIViewController
    func creatCreateResumeViewControllerModlue(router: RouterProtocol) -> UIViewController
    func creatPreciselyCreatResumeViewControllerModule(router: RouterProtocol) -> UIViewController
    func creatCreatResumeTargetViewControllerModule(router: RouterProtocol) -> UIViewController
    func creatIshAxtaranlarModule(router: RouterProtocol) -> UIViewController
    func creatUserViewController(router: RouterProtocol) -> UIViewController
    func creatUserSettingViewControllerModule(router: RouterProtocol, userInfoModel: UserInfoModel?) -> UIViewController
    func creatFavoritesViewControllerModeule(router: RouterProtocol) -> UIViewController
    func creatFavaritesDetailModeule(router: RouterProtocol, testArray: FeedResponse?) -> UIViewController
    
    func testcreatUserViewController(router: RouterProtocol, userInfoModel: UserInfoModel?)
    
    //AUTH
    func creatChoiceModule(authRouter: AuthRouterProtocol) -> UIViewController
    func creatLogInModule(authRouter: AuthRouterProtocol) -> UIViewController
    func creatSignUpModule(authRouter: AuthRouterProtocol) -> UIViewController
}

class AsseblyModelBuilder: AsseblyBuilderProtocol {
    
    //creatMainModule
    func creatMainModule(router: RouterProtocol) -> UIViewController {
        let view = MainViewController()
        let firebaseSet = FirebaseSet()
        let mainViewModel = MainViewModel(router: router, firebaseSet: firebaseSet)
        view.mainViewModel = mainViewModel
        return view
    }
    
    //creatDetailModule
    func creatDetailModule(router: RouterProtocol, testArray: FeedResponse?) -> UIViewController {
        let view = DetailViewController()
        let detailViewModel = DetailViewModel(router: router, testArray: testArray)
        view.detailViewModel = detailViewModel
        return view
    }
    
    //creatJobVacanxyModule
    func creatJobVacanxyModule(router: RouterProtocol) -> UIViewController {
        let view = JobVacancyViewController()
        let viewModel = JobVacancyViewModel(router: router)
        view.jobVacancyViewModel = viewModel
        return view
    }
    
    //creatCreateResumeViewControllerModlue
    func creatCreateResumeViewControllerModlue(router: RouterProtocol) -> UIViewController {
        let view = CreateResumeViewController()
        let networkService = NetworkService()
        let viewModel = CreateResumeViewModel(router: router, networkService: networkService)
        view.creatResumeViewModel = viewModel
        return view
    }
    
    //creatPreciselyCreatResumeViewControllerModule
    func creatPreciselyCreatResumeViewControllerModule(router: RouterProtocol) -> UIViewController {
        let view = PreciselyCreatResumeViewController()
        let viewModel = PreciselyCreatResumeViewModel(router: router)
        view.viewModel = viewModel
        return view
    }
    
    //creatCreatResumeTargetViewControllerModule
    func creatCreatResumeTargetViewControllerModule(router: RouterProtocol) -> UIViewController {
        let view = CreatResumeTargetViewController()
        let viewModel = CreatResumeTargetViewModel(router: router)
        view.viewModel = viewModel
        return view
    }
    
    //creatIshAxtaranlarModule
    func creatIshAxtaranlarModule(router: RouterProtocol) -> UIViewController {
        let view = IshAxtaranlarViewController()
        let viewModel = IshAxtaranlarViewModel(router: router)
        view.viewModel = viewModel
        return view
    }
    
    //creatUserViewControllerModeule
    func creatUserViewController(router: RouterProtocol) -> UIViewController {
        let view = UserViewController()
        let firebaseSet = FirebaseSet()
        let viewModel = UserViewModel(router: router, firebaseSet: firebaseSet)
        view.viewModel = viewModel
        return view
    }
    
    //creatUserSettingViewControllerModule
    func creatUserSettingViewControllerModule(router: RouterProtocol, userInfoModel: UserInfoModel?) -> UIViewController {
        let view = UserSettingViewController()
        let firebaseSet = FirebaseSet()
        let viewModel = UserSettingViewModel(router: router, firebaseSet: firebaseSet, userInfoModel: userInfoModel)
        view.viewModel = viewModel
        return view
    }
    
    //creatFavoritesViewControllerModeule
    func creatFavoritesViewControllerModeule(router: RouterProtocol) -> UIViewController {
        let view = FavoritesViewController()
        let viewModel = FavoritesViewModel(router: router)
        view.viewModel = viewModel
        return view
    }
    
    //creatFavaritesDetailModeule
    func creatFavaritesDetailModeule(router: RouterProtocol, testArray: FeedResponse?) -> UIViewController {
        let view = FavoritesDetailViewController()
        let viewModel = FavoritesDetailViewModel(router: router, testArray: testArray)
        view.viewModel = viewModel
        return view
    }
    
    func testcreatUserViewController(router: RouterProtocol, userInfoModel: UserInfoModel?) {
        //UserViewModel(router: router, userInfoModel: userInfoModel)
    }

    
    //MARK: - AUTH
    //creatChoiceModule
    func creatChoiceModule(authRouter: AuthRouterProtocol) -> UIViewController {
        let view = ChoiceViewController()
        let viewModel = ChoiceViewModel(router: authRouter)
        view.viewModel = viewModel
        return view
    }
    //creatLogInModule
    func creatLogInModule(authRouter: AuthRouterProtocol) -> UIViewController {
        let view = LogInViewController()
        let firebaseAuth = FirebaseSetAuth()
        let viewModel = LogInViewModel(router: authRouter, firebaseSet: firebaseAuth)
        view.viewModel = viewModel
        return view
    }
    
    //creatSignUp
    func creatSignUpModule(authRouter: AuthRouterProtocol) -> UIViewController {
        let view = SignUpViewController()
        let firebaseAuth = FirebaseSetAuth()
        let viewModel = SignUpViewModel(router: authRouter, firebaseSet: firebaseAuth)
        view.viewModel = viewModel
        return view
    }
}
