cask "yuna" do
  version "1.4.22"
  sha256 "913cb1c36cfe3fa6d414dd6e51cdfe1d06ed5b92585c9fe7e248f9b92c482006"

  url "https://github.com/BeeeQueue/yuna/releases/download/v#{version}/Yuna-#{version}.dmg",
      verified: "github.com/BeeeQueue/yuna/"
  appcast "https://github.com/BeeeQueue/yuna/releases.atom"
  name "Yuna"
  desc "Anime player and list manager"
  homepage "https://yuna.moe/"

  app "Yuna.app"

  zap trash: "~/Library/Application Support/yuna"
end
