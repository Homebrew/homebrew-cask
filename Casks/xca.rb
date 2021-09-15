cask "xca" do
  version "2.4.0"
  sha256 "1fb5fa69759f9bfd15e0a8ddabc6b9e2cf52e9c41ad2346b2f4c293d950c6bc4"

  url "https://github.com/chris2511/xca/releases/download/RELEASE.#{version}/xca-#{version}.dmg",
      verified: "github.com/chris2511/xca/"
  name "XCA"
  desc "X Certificate and Key management"
  homepage "https://hohnstaedt.de/xca/"

  livecheck do
    url :url
    regex(/^RELEASE\.(\d+(?:\.\d+)*)$/i)
  end

  app "xca.app"
end
