cask "taskpaper" do
  version "3.8.13"
  sha256 "c73fc8f7b5ace388af453b1511690bec97a7b1d44f45b99e3d06835999b217fc"

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version}.dmg"
  appcast "https://www.taskpaper.com/assets/app/TaskPaper.rss"
  name "TaskPaper"
  desc "App to make lists and help with organization"
  homepage "https://www.taskpaper.com/"

  auto_updates true

  app "TaskPaper.app"
end
