cask "xca" do
  version "2.4.0"
  sha256 "3445524ef5e81d5f19c4d4ace1f849480fe982458e31cebe689b6fd8b11200bc"

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
