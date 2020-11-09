cask "thedesk" do
  version "21.2.4"
  sha256 "b6a1e4b7e47439a4e3f16954c0835ea01951a042278b3220e9d2af6044a2c231"

  # github.com/cutls/TheDesk/ was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast "https://github.com/cutls/TheDesk/releases.atom"
  name "TheDesk"
  desc "Mastodon/Misskey Client for PC"
  homepage "https://thedesk.top/"

  app "TheDesk.app"
end
