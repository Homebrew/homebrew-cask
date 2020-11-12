cask "taskpaper" do
  version "3.8.11"
  sha256 "235d48d56e76921864bd2ae54351aaace9f43b97379fa6c7e4d697c5ff1e6b89"

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version}.dmg"
  appcast "https://www.taskpaper.com/assets/app/TaskPaper.rss"
  name "TaskPaper"
  desc "App to make lists and help with organization"
  homepage "https://www.taskpaper.com/"

  auto_updates true

  app "TaskPaper.app"
end
