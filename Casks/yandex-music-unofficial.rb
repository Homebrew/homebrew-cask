cask "yandex-music-unofficial" do
  arch arm: "-arm64"

  version "1.7.0"

  on_intel do
    sha256 "2134d6cedbc5df0a1c936c6168c6fd1826fc696290257f7084d7604bda16842c"
  end
  on_arm do
    sha256 "465efa83db9e9f98d1b32f76584b900aa039dd46bd1664f11b0ad78b59ceb2d2"
  end

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
