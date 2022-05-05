cask "taskpaper" do
  version "3.8.17,477"
  sha256 "22654925eae3d1ce151f44cab7214e99e190f2441d7a9621a56439b24867bbd7"

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version.csv.first}.dmg"
  name "TaskPaper"
  desc "App to make lists and help with organization"
  homepage "https://www.taskpaper.com/"

  livecheck do
    url "https://www.taskpaper.com/assets/app/TaskPaper.rss"
    strategy :sparkle
  end

  auto_updates true

  app "TaskPaper.app"
end
