class FirstViewController < UIViewController
  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.redColor
  end
  def init
    super
    if self
      tbi = self.tabBarItem
      tbi.title = "First"

       tbi_pic = tabBarItem.initWithTabBarSystemItem(UITabBarSystemItemBookmarks, tag:1)
    end
    self
  end

  def viewWillAppear(animated)
    super animated
    puts self.class
  end

end
