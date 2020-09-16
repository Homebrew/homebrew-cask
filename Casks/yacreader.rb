cask "yacreader" do
  version "9.7.1.2009123"
  sha256 "068dbed581b8098d2eb36d32a8a16966eb588519d8b64ae592a2383d91bb36ec"

  # github.com/YACReader/yacreader/ was verified as official when first introduced to the cask
  url "https://github.com/YACReader/yacreader/releases/download/#{version.major_minor_patch}/YACReader-#{version}.MacOSX-Intel.dmg"
  appcast "https://github.com/YACReader/yacreader/releases.atom",
          must_contain: version.major_minor_patch
  name "YACReader"
  homepage "https://www.yacreader.com/"

  app "YACReader.app"
  app "YACReaderLibrary.app"
end
