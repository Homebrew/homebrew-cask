cask "webarchiveextractor" do
  version "0.2"
  sha256 "ff9d0debc9c718b58752c1c8163fea627e461238b7f315bdbe85329d427bd7f4"

  # downloads.sourceforge.net/webarchivext/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/webarchivext/WebArchiveExtractor.#{version}.zip"
  appcast "https://sourceforge.net/projects/webarchivext/rss"
  name "Web Archive Extractor"
  homepage "https://webarchivext.sourceforge.io/"

  app "WebArchiveExtractor.app"
end
