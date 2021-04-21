cask "xca" do
  version "2.3.0"
  sha256 "798dcad616837b33ad7a92f6f62a7afba3d9eb049ad26ecccfc8747c8ac9d551"

  url "https://github.com/chris2511/xca/releases/download/RELEASE.#{version}/xca-#{version}.dmg",
      verified: "github.com/chris2511/xca/"
  name "XCA"
  desc "X Certificate and Key management"
  homepage "https://hohnstaedt.de/xca/"

  livecheck do
    url :url
    strategy :git
    regex(/^RELEASE\.(\d+(?:\.\d+)*)$/i)
  end

  app "xca.app"
end
