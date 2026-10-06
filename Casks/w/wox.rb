cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.6"
  sha256 arm:   "c42e4d9b9de7e48355037de4b878cdae2464094c8ab6739995a6f571905d57ea",
         intel: "39dfd63852ef82015aed63e7f40af91291bd53a12d193c524623b447de03de68"

  url "https://github.com/Wox-launcher/Wox/releases/download/v#{version}/wox-mac-#{arch}.dmg"
  name "Wox"
  desc "Launcher tool"
  homepage "https://github.com/Wox-launcher/Wox"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  app "Wox.app"

  zap trash: "~/.wox"
end
