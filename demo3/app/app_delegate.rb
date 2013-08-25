class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    first_view_controller = FirstViewController.new
    second_view_controller = SecondViewController.new
    tab_bar_controller = UITabBarController.new
    table_stuff = MyTableView.new

    controllers = [first_view_controller,second_view_controller,table_stuff]

    tab_bar_controller.viewControllers = controllers

    @window.rootViewController = tab_bar_controller

    @window.makeKeyAndVisible
    true
  end
end
