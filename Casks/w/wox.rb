cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.3.0"
  sha256 arm:   "e916cfd20e59894d36794171c499048d233752486986aea8b33290d4f0a98f36",
         intel: "dfc8b2b4254b0f3ef88a5cbcccfb785e796c9298f488c3150daf6016d044386b"

  url "https://github.com/Wox-launcher/Wox/releases/download/v#{version}/wox-mac-#{arch}.dmg"
  name "Wox"
  desc "Launcher tool"
  homepage "https://github.com/Wox-launcher/Wox"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :big_sur

  app "Wox.app"

  zap trash: "~/.wox"
end
