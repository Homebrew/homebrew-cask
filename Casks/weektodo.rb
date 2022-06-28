cask "weektodo" do
  version "1.8.0"
  sha256 "4a103e80ad590849ce10167016da1f3abb611918984d427e8e56c0f852ee75d9"

  url "https://github.com/Zuntek/WeekToDoWeb/releases/download/v#{version}/WeekToDo-#{version}.dmg",
      verified: "github.com/Zuntek/WeekToDoWeb/"
  name "WeekToDo"
  desc "Weekly planner app focused on privacy"
  homepage "https://weektodo.me/"

  app "WeekToDo.app"

  zap trash: [
    "~/Library/Application Support/WeekToDo",
    "~/Library/Preferences/com.aone.keka.plist",
    "~/Library/Saved Application State/weektodo-app.netlify.app.savedState",
  ]
end
