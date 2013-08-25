class SecondViewController < UIViewController
  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.greenColor
  end

  def init
    super
    if self
      tbi_title = self.tabBarItem
      tbi_title.title = "Second"
      tbi_pic = tabBarItem.initWithTabBarSystemItem(UITabBarSystemItemFavorites, tag:1)
    end
    self
  end

  def viewWillAppear(animated)
    super animated
    puts self.class
  end
end
