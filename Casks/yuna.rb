cask "yuna" do
  version "1.4.21"
  sha256 "547d5759122535a14674906c8ff4494bc5e2e5f9bc001dc991ddaea574d8d5b4"

  # github.com/BeeeQueue/yuna/ was verified as official when first introduced to the cask
  url "https://github.com/BeeeQueue/yuna/releases/download/v#{version}/Yuna-#{version}.dmg"
  appcast "https://github.com/BeeeQueue/yuna/releases.atom"
  name "Yuna"
  desc "Anime player and list manager"
  homepage "https://yuna.moe/"

  app "Yuna.app"

  zap trash: "~/Library/Application Support/yuna"
end
