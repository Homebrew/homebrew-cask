cask "taskade" do
  version "3.3.6"
  sha256 "e6e47f08de0af0e13f24b701afe03596829a6b836d72c53e26a113ecf3c61b57"

  url "https://apps.taskade.com/updates/Taskade-#{version}-universal.dmg"
  name "Taskade"
  desc "Task manager for teams"
  homepage "https://www.taskade.com/"

  livecheck do
    url "https://www.taskade.com/downloads"
    strategy :page_match
    regex(%r{href=.*?/Taskade-(\d+(?:\.\d+)*)-universal\.dmg}i)
  end

  app "Taskade.app"
end
