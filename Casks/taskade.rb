cask "taskade" do
  version "3.3.0"
  sha256 "c99a2e45fb0a2f36156b86e5cf2670da11d9084ba394c2bc1aed337f35bf43b4"

  url "https://apps.taskade.com/updates/Taskade-#{version}.dmg"
  name "Taskade"
  desc "Task manager for teams"
  homepage "https://www.taskade.com/"

  livecheck do
    url "https://www.taskade.com/downloads"
    strategy :page_match
    regex(%r{href=.*?/Taskade-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Taskade.app"
end
