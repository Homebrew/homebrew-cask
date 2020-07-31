cask "warsow" do
  version "2.1.2"
  sha256 "176b037186e4d8a1c0fc740fe8660cd960339fc4eeca5e5eaaec4028b9bd6aba"

  url "https://warsow.net/warsow-#{version}.dmg"
  appcast "https://www.warsow.net/bundles/client.bundle.js"
  name "Warsow"
  homepage "https://www.warsow.net/"

  app "Warsow.app"
end
