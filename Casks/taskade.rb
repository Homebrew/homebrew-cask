cask "taskade" do
  version "3.2.2"
  sha256 "59232f52500f05a5f60eda2391f3bf1e2d28f66e844e936e85677c62564a003b"

  url "https://apps.taskade.com/updates/Taskade-#{version}-mac.zip"
  appcast "https://www.taskade.com/downloads"
  name "Taskade"
  desc "Task manager for teams"
  homepage "https://www.taskade.com/"

  app "Taskade.app"
end
