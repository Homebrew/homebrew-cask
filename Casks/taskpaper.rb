cask "taskpaper" do
  version "3.9.1"
  sha256 "3bb4488a36240a4c4979455a8bbb3c821dd8893cb0ebaaab0460dd6dcaae81e4"

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version}.dmg"
  name "TaskPaper"
  desc "App to make lists and help with organization"
  homepage "https://www.taskpaper.com/"

  livecheck do
    url "https://www.taskpaper.com/assets/app/TaskPaper.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "TaskPaper.app"
end
