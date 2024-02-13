cask "weektodo" do
  version "2.2.0"
  sha256 "2b5c2c9ed1a16776fc7121d37f4ccaf40a82d94987906f5b2e75e428acda2167"

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
