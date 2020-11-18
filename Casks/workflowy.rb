cask "workflowy" do
  version "1.3.5-12695"
  sha256 "cd35f26bddf64921648b965e19415ddb1b51e65c5cc130a9da8df60d67d6a897"

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast "https://github.com/workflowy/desktop/releases.atom"
  name "WorkFlowy"
  desc "Notetaking tool"
  homepage "https://workflowy.com/downloads/mac/"

  auto_updates true

  app "WorkFlowy.app"
end
