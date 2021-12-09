cask "taskade" do
  version "4.1.2"
  sha256 "8acb02232a8f9e8513ab931789e621566242e70ca71be301a1cdf43d025f0bf6"

  url "https://apps.taskade.com/updates/Taskade-#{version}-universal.dmg"
  name "Taskade"
  desc "Task manager for teams"
  homepage "https://www.taskade.com/"

  livecheck do
    url "https://www.taskade.com/downloads"
    regex(%r{href=.*?/Taskade[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg}i)
  end

  depends_on macos: ">= :yosemite"

  app "Taskade.app"

  zap trash: [
    "~/Library/Application Support/taskade",
    "~/Library/Preferences/com.taskade.plist",
    "~/Library/Saved Application State/com.taskade.savedState",
  ]
end
