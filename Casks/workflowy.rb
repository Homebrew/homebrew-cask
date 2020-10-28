cask "workflowy" do
  version "1.3.5-12120"
  sha256 "eaf38b99147c1b8a5c75267584215acab65a9f0db1f0cf2adc6b3e1092dfafd9"

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast "https://github.com/workflowy/desktop/releases.atom"
  name "WorkFlowy"
  desc "Notetaking tool"
  homepage "https://workflowy.com/downloads/mac/"

  auto_updates true

  app "WorkFlowy.app"
end
