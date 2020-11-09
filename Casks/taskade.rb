cask "taskade" do
  version "3.2.5"
  sha256 "94cafaa23d37eae195f0bc8fc1647fd8a4fdcccbf26631493d06a9d5c9236bb7"

  url "https://apps.taskade.com/updates/Taskade-#{version}-mac.zip"
  appcast "https://www.taskade.com/downloads"
  name "Taskade"
  desc "Task manager for teams"
  homepage "https://www.taskade.com/"

  app "Taskade.app"
end
