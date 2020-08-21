cask "workflowy" do
  version "1.3.5-10091"
  sha256 "3a10c0990e37221f18f8a19383aad9b83ad2b17be0a37fe4f2e3c286bc5817e8"

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast "https://github.com/workflowy/desktop/releases.atom"
  name "WorkFlowy"
  homepage "https://workflowy.com/downloads/mac/"

  auto_updates true

  app "WorkFlowy.app"
end
