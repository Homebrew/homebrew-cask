cask "taskade" do
  version "3.2.1"
  sha256 "84e56c1851010baed8a2a17091383238e0f7ad6775da5e47c87c1aa1893f3095"

  url "https://apps.taskade.com/updates/Taskade-#{version}-mac.zip"
  appcast "https://www.taskade.com/downloads"
  name "Taskade"
  homepage "https://www.taskade.com/"

  app "Taskade.app"
end
