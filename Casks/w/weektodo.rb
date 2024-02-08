cask "weektodo" do
  version "2.1.0"
  sha256 "e4bb9e10ac0434f0c0c6d9ec757ad0bec8e49a1d7a8b862b1b72a294ac9cf930"

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
