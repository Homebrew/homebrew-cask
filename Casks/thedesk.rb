cask "thedesk" do
  version "21.2.3"
  sha256 "9db7134af5efed1b7004fe4afb09e25d5184a2bcbf5f8515cdc6306f34311cbb"

  # github.com/cutls/TheDesk/ was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast "https://github.com/cutls/TheDesk/releases.atom"
  name "TheDesk"
  desc "Mastodon/Misskey Client for PC"
  homepage "https://thedesk.top/"

  app "TheDesk.app"
end
