cask "yandex-music-unofficial" do
  arch arm: "-arm64"

  version "1.7.1"
  sha256 arm:   "d6e3b2a906db15a188e5189d997dc6f597b6004ff7bcd33232c0c3b73976c67c",
         intel: "ff537bc41e7c73916100dc8f4fb58672973b89f31818ac1a01d70e1d4ee750c1"

  url "https://github.com/juvirez/yandex-music-app/releases/download/v#{version}/Yandex-Music-Unofficial-#{version}#{arch}.dmg",
      verified: "github.com/juvirez/yandex-music-app/"
  name "Yandex Music Unofficial"
  desc "Unofficial app for Yandex Music"
  homepage "https://yandex-music.juvs.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Yandex Music Unofficial.app"

  zap trash: "~/Library/Application Support/yandex-music-app"
end
