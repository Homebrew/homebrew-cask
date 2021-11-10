cask "taskade" do
  version "4.1.1"
  sha256 "cf1d4d37e3cc2215d2822fa87114920d718d03cdaccb1b802fc5cb84831a0d97"

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
