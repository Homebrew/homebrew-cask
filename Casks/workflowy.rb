cask "workflowy" do
  version "1.3.5-12996"
  sha256 "9aa597c8549cd3cdc4bcee1fedba816ae01168a9f6ae4653d3aa4ee9a005206f"

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.zip"
  appcast "https://github.com/workflowy/desktop/releases.atom"
  name "WorkFlowy"
  desc "Notetaking tool"
  homepage "https://workflowy.com/downloads/mac/"

  auto_updates true

  app "WorkFlowy.app"
end
