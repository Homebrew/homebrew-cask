cask "thedesk" do
  version "21.2.2"
  sha256 "4cfc58fc93a1bc4f12f2ed79a232fb48d152910d66990dc148a7aebcd4a4388d"

  # github.com/cutls/TheDesk/ was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast "https://github.com/cutls/TheDesk/releases.atom"
  name "TheDesk"
  homepage "https://thedesk.top/"

  app "TheDesk.app"
end
