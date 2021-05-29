cask "taskade" do
  version "3.3.7"
  sha256 "f3d3a0ea2278b2bf1c378bbb68cc28e32251bfbdffdb7d2a09ca7f907779769a"

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
