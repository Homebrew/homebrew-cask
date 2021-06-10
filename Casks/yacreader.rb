cask "yacreader" do
  version "9.8.1.2106024"
  sha256 "9fefe845252766015c1678c601b991264d77b3ee152324abedef8078b27a4344"

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
