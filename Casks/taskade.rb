cask "taskade" do
  version "4.2.6"
  sha256 "26bf66a278442d402e3bbf98f1229770b8cb18eabd3d94cb9aecfd8696cdc8a7"

  url "https://apps.taskade.com/updates/Taskade-#{version}-universal.dmg"
  name "Taskade"
  desc "Task manager for teams"
  homepage "https://www.taskade.com/"

  livecheck do
    url "https://www.taskade.com/downloads"
    regex(%r{href=.*?/Taskade[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg}i)
  end

  app "Taskade.app"

  zap trash: [
    "~/Library/Application Support/taskade",
    "~/Library/Preferences/com.taskade.plist",
    "~/Library/Saved Application State/com.taskade.savedState",
  ]
end
