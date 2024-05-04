cask "vleer@beta" do
  version "1.0.0-beta.3"
  sha256 "08adac24441a6ba9409209a2c4788ae8e8c9e25c04e5535d1184cf3024d7cf13"

  url "https://github.com/Vleerapp/Vleer/releases/download/v#{version}/Vleer_#{version}_aarch64.dmg"
  name "Vleer"
  desc "A music app from the future"
  homepage "https://vleer.app"

  app "Vleer.app"
end
