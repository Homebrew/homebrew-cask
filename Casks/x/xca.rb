cask "xca" do
  version "2.5.0"
  sha256 "0042758b99d09aa254d721e1e94fd97adfc186727891093e9eeec4d18e9d734f"

  url "https://github.com/chris2511/xca/releases/download/RELEASE.#{version}/xca-#{version}-Darwin.dmg",
      verified: "github.com/chris2511/xca/"
  name "XCA"
  desc "X Certificate and Key management"
  homepage "https://hohnstaedt.de/xca/"

  livecheck do
    url :url
    regex(/^RELEASE\.(\d+(?:\.\d+)*)$/i)
  end

  app "xca.app"

  zap trash: [
    "~/Library/Application Support/xca",
    "~/Library/Saved Application State/de.hohnstaedt.xca.savedState",
  ]
end
