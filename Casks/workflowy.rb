cask "workflowy" do
  version "1.3.5-10241"
  sha256 "9d892422792028ea16546c93639c0856865acee9234ffdc9b58b1f3aa2cac6c0"

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast "https://github.com/workflowy/desktop/releases.atom"
  name "WorkFlowy"
  homepage "https://workflowy.com/downloads/mac/"

  auto_updates true

  app "WorkFlowy.app"
end
