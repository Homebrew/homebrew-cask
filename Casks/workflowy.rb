cask "workflowy" do
  version "1.3.5-9870"
  sha256 "c7154d2024c930c07bbcbc008c25fb25cac12b78ddccd65dbfc2d5f754cdb8d2"

  # github.com/workflowy/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy.dmg"
  appcast "https://github.com/workflowy/desktop/releases.atom"
  name "WorkFlowy"
  homepage "https://workflowy.com/downloads/mac/"

  auto_updates true

  app "WorkFlowy.app"
end
