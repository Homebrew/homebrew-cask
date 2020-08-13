cask "workflowy" do
  version "1.3.5-10008"
  sha256 "149c0fb4ad88381b7c8c2fe83e6313b515c72266c181c0b85839e9d35cf2d6e0"

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast "https://github.com/workflowy/desktop/releases.atom"
  name "WorkFlowy"
  homepage "https://workflowy.com/downloads/mac/"

  auto_updates true

  app "WorkFlowy.app"
end
