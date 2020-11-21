cask "workflowy" do
  version "1.3.5-12780"
  sha256 "b4d98de4f2324673efc48c03d4890cade36203fea1b6e6ad8c70b40931dba90c"

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.zip"
  appcast "https://github.com/workflowy/desktop/releases.atom"
  name "WorkFlowy"
  desc "Notetaking tool"
  homepage "https://workflowy.com/downloads/mac/"

  auto_updates true

  app "WorkFlowy.app"
end
