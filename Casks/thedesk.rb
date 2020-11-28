cask "thedesk" do
  version "22.0.0"
  sha256 "0b8de299576bbb0f80382a22b7ab35b27e8fa1f722abb4b8f268e4d6670baeca"

  # github.com/cutls/TheDesk/ was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast "https://github.com/cutls/TheDesk/releases.atom"
  name "TheDesk"
  desc "Mastodon/Misskey Client for PC"
  homepage "https://thedesk.top/"

  app "TheDesk.app"
end
