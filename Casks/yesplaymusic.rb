cask "yesplaymusic" do
  version "0.3.2"
  sha256 "7b3a2475ad5cdecd4641c6552c864e5cfc3ad7af2d7d36e21917c7e3ada596f9"

  url "https://github.com/qier222/YesPlayMusic/releases/download/v#{version}/YesPlayMusic-#{version}-mac.zip"
  appcast "https://github.com/qier222/YesPlayMusic/releases.atom"
  name "YesPlayMusic"
  desc "Third-party NetEase Cloud Player"
  homepage "https://github.com/qier222/YesPlayMusic"

  app "YesPlayMusic.app"
end
