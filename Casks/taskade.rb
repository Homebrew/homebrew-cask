cask "taskade" do
  version "3.2.0"
  sha256 "a831a07b977507c47a195c2cb491d4b5007279334a7b11b103cb7b73f9507826"

  url "https://apps.taskade.com/updates/Taskade-#{version}-mac.zip"
  appcast "https://www.taskade.com/downloads"
  name "Taskade"
  homepage "https://www.taskade.com/"

  app "Taskade.app"
end
