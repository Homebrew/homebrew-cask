cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.1"
  sha256 arm:   "8cb94f5c339b265364e2fdccc7b849df1ad1b34a87b530f03dcd16236d06b28d",
         intel: "9081401a02293f5611f741e1151948933ab7deaa52a2b8d829d8057fb3716f33"

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
