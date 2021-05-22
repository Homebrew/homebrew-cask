cask "yacreader" do
  version "9.8.0.2105165"
  sha256 "d22a4107e895cee961bcef4dcbfb7061942baae13a3c0a0d790bb82199153430"

  url "https://github.com/YACReader/yacreader/releases/download/#{version.major_minor_patch}/YACReader-#{version}.MacOSX-Intel.dmg",
      verified: "github.com/YACReader/yacreader/"
  name "YACReader"
  desc "Comic reader"
  homepage "https://www.yacreader.com/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/YACReader[._-]v?(\d+(?:\.\d+)+)[._-]MacOSX[._-]Intel\.dmg}i)
  end

  app "YACReader.app"
  app "YACReaderLibrary.app"
end
