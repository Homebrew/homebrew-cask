cask "workflowy" do
  version "1.3.5-12042"
  sha256 "c9cd772f41a4fbdd2a79ebed5449c975c8077c3bfb46cf9976fc6ce529e6361f"

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast "https://github.com/workflowy/desktop/releases.atom"
  name "WorkFlowy"
  desc "Notetaking tool"
  homepage "https://workflowy.com/downloads/mac/"

  auto_updates true

  app "WorkFlowy.app"
end
