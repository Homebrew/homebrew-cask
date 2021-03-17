cask "yacreader" do
  version "9.7.1.2009123"
  sha256 "068dbed581b8098d2eb36d32a8a16966eb588519d8b64ae592a2383d91bb36ec"

  url "https://github.com/YACReader/yacreader/releases/download/#{version.major_minor_patch}/YACReader-#{version}.MacOSX-Intel.dmg",
      verified: "github.com/YACReader/yacreader/"
  name "YACReader"
  homepage "https://www.yacreader.com/"

  livecheck do
    url "https://github.com/YACReader/yacreader/releases/latest"
    strategy :page_match
    regex(%r{href=.*?/YACReader-(\d+(?:\.\d+)*)\.MacOSX-Intel\.dmg}i)
  end

  app "YACReader.app"
  app "YACReaderLibrary.app"
end
