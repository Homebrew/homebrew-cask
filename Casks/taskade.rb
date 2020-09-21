cask "taskade" do
  version "3.2.3"
  sha256 "c862347c0ec7a9b5e4182210e6a2ad48d4647e02c135d0adf1ac41f0c60b66ee"

  url "https://apps.taskade.com/updates/Taskade-#{version}-mac.zip"
  appcast "https://www.taskade.com/downloads"
  name "Taskade"
  desc "Task manager for teams"
  homepage "https://www.taskade.com/"

  app "Taskade.app"
end
