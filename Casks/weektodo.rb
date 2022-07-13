cask "weektodo" do
  version "1.8.5"
  sha256 "e259667a7c8ffce0b24d010453566e5e440950ba947c1da708268a19a8b8ccbb"

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
