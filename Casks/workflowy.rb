cask "workflowy" do
  version "1.3.5-9763"
  sha256 "4139a81671d620904e5921683c98405d3501f0cbd2e99ebaab0fa21c3e3829b8"

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast "https://github.com/workflowy/desktop/releases.atom"
  name "WorkFlowy"
  homepage "https://workflowy.com/downloads/mac/"

  auto_updates true

  app "WorkFlowy.app"
end
