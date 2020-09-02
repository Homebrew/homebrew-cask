cask "workflowy" do
  version "1.3.5-10409"
  sha256 "e637fd54d4e27410ec3eadf5a0cf6fe1524ce6da48349cc876b5da5529638dc3"

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast "https://github.com/workflowy/desktop/releases.atom"
  name "WorkFlowy"
  homepage "https://workflowy.com/downloads/mac/"

  auto_updates true

  app "WorkFlowy.app"
end
