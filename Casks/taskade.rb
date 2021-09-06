cask "taskade" do
  version "3.3.10"
  sha256 "a325aa969f8dc6c8d180162a01c1c4976fdd2a40f13a754a9883c30c7e3940b7"

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
end
