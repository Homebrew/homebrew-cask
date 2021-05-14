cask "xca" do
  version "2.4.0"
  sha256 "a5672fd46168b8d81c226dc47dd0022773382389291676c8aa17d6765e20b697"

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
