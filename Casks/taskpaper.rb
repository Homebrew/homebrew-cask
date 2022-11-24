cask "taskpaper" do
  version "3.9,479"
  sha256 "c2a69a03e75ae0554bdb6a7e6b245d6e80b774ba4d3a93bddf0fef87d4f592b7"

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
