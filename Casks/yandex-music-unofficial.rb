cask "yandex-music-unofficial" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.6.3"

  if Hardware::CPU.intel?
    sha256 "22326821e1650d0dd2c2728b3735baeb48cecd652df533526d0788227342fec9"
  else
    sha256 "4e60274811142c60b40f34de846ca6ea425f00fbe67ee057e697aeeebc5a68c1"
  end

  url "https://github.com/juvirez/yandex-music-app/releases/download/v#{version}/Yandex-Music-Unofficial-#{version}#{arch}.dmg",
      verified: "github.com/juvirez/yandex-music-app/"
  name "Yandex Music Unofficial"
  desc "Unofficial app for Yandex Music"
  homepage "https://yandex-music.juvs.dev/"

  auto_updates true

  app "Yandex Music Unofficial.app"

  zap trash: "~/Library/Application Support/yandex-music-app"
end
