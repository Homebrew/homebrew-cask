cask "workflowy" do
  version "1.3.5-13131"
  sha256 "996e2ca1eb05acd98a182913f29a7b42b50a8662d1b6356a4355bbd1addc9668"

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.zip"
  appcast "https://github.com/workflowy/desktop/releases.atom"
  name "WorkFlowy"
  desc "Notetaking tool"
  homepage "https://workflowy.com/downloads/mac/"

  auto_updates true

  app "WorkFlowy.app"
end
