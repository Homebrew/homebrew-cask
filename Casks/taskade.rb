cask "taskade" do
  version "3.3.0"
  sha256 "c99a2e45fb0a2f36156b86e5cf2670da11d9084ba394c2bc1aed337f35bf43b4"

  url "https://apps.taskade.com/updates/Taskade-#{version}.dmg"
  appcast "https://www.taskade.com/downloads"
  name "Taskade"
  desc "Task manager for teams"
  homepage "https://www.taskade.com/"

  app "Taskade.app"
end
