cask "weektodo" do
  version "1.9.0"
  sha256 "d4f7b19a3e5e56214a6b3f9921fa73728567e6e7e0884a17b6318cef4f6c3fc0"

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
