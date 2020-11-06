cask "taskpaper" do
  version "3.8.10"
  sha256 "18b6d7e248ed88ff1d1a3db06de7110284967f277ad2732be90cc500c7a11663"

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version}.dmg"
  appcast "https://www.taskpaper.com/assets/app/TaskPaper.rss"
  name "TaskPaper"
  desc "App to make lists and help with organization"
  homepage "https://www.taskpaper.com/"

  auto_updates true

  app "TaskPaper.app"
end
