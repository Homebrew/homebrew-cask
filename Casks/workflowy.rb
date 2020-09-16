cask "workflowy" do
  version "1.3.5-10643"
  sha256 "8e53f823e8341cde8679e9ad3443f0354833ec22a74f50176a950cafe63a5e04"

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast "https://github.com/workflowy/desktop/releases.atom"
  name "WorkFlowy"
  desc "Notetaking tool"
  homepage "https://workflowy.com/downloads/mac/"

  auto_updates true

  app "WorkFlowy.app"
end
