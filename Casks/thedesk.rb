cask "thedesk" do
  version "21.3.0"
  sha256 "d59b5eef5c552268a6c8d6e7357cd31e667d19b2ba35382c6e2ad93d6607a824"

  # github.com/cutls/TheDesk/ was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast "https://github.com/cutls/TheDesk/releases.atom"
  name "TheDesk"
  desc "Mastodon/Misskey Client for PC"
  homepage "https://thedesk.top/"

  app "TheDesk.app"
end
