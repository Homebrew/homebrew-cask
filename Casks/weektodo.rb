cask "weektodo" do
  version "1.9.0"
  sha256 "28938c60426ebc1fc35f0cd44e43298cf410030bf0a5f0f27fbe0c68dde19cdb"

  url "https://github.com/Zuntek/WeekToDoWeb/releases/download/v#{version}/WeekToDo-#{version}.dmg",
      verified: "github.com/Zuntek/WeekToDoWeb/"
  name "WeekToDo"
  desc "Weekly planner app focused on privacy"
  homepage "https://weektodo.me/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "WeekToDo.app"

  zap trash: [
    "~/Library/Application Support/WeekToDo",
    "~/Library/Preferences/com.aone.keka.plist",
    "~/Library/Saved Application State/weektodo-app.netlify.app.savedState",
  ]
end
