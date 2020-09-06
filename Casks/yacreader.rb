cask "yacreader" do
  version "9.7.0.2009038"
  sha256 "f69328c179b478d73fb6c74c4452a033fc4d72ce1300ca4757f6c0830a7caa00"

  # github.com/YACReader/yacreader/ was verified as official when first introduced to the cask
  url "https://github.com/YACReader/yacreader/releases/download/#{version.major_minor_patch}/YACReader-#{version}.MacOSX-Intel.dmg"
  appcast "https://github.com/YACReader/yacreader/releases.atom",
          must_contain: version.major_minor_patch
  name "YACReader"
  homepage "https://www.yacreader.com/"

  app "YACReader.app"
  app "YACReaderLibrary.app"
end
