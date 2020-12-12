cask "taskpaper" do
  version "3.8.12"
  sha256 "044e94f40a0bf823787ef97a94a8d4133fdf97bcc07f2eb08e21f31e9caf86d9"

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version}.dmg"
  appcast "https://www.taskpaper.com/assets/app/TaskPaper.rss"
  name "TaskPaper"
  desc "App to make lists and help with organization"
  homepage "https://www.taskpaper.com/"

  auto_updates true

  app "TaskPaper.app"
end
