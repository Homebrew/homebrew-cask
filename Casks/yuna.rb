cask "yuna" do
  version "1.4.21"
  sha256 "547d5759122535a14674906c8ff4494bc5e2e5f9bc001dc991ddaea574d8d5b4"

  url "https://github.com/BeeeQueue/yuna/releases/download/v#{version}/Yuna-#{version}.dmg",
      verified: "github.com/BeeeQueue/yuna/"
  name "Yuna"
  desc "Anime player and list manager"
  homepage "https://yuna.moe/"

  livecheck do
    url :url
    strategy :git
  end

  app "Yuna.app"

  zap trash: "~/Library/Application Support/yuna"
end
