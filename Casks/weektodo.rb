cask "weektodo" do
  version "2.0.0"
  sha256 "adfedcbb09c934f2ff0540fa3d763073df0ca70f2fb8f615f750b1eb118481c1"

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
    "~/Library/Preferences/weektodo-app.netlify.app.plist",
    "~/Library/Saved Application State/weektodo-app.netlify.app.savedState",
  ]
end
