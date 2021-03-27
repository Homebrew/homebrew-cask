cask "webarchiveextractor" do
  version "0.2"
  sha256 "ff9d0debc9c718b58752c1c8163fea627e461238b7f315bdbe85329d427bd7f4"

  url "https://downloads.sourceforge.net/webarchivext/WebArchiveExtractor.#{version}.zip",
      verified: "downloads.sourceforge.net/webarchivext/"
  appcast "https://sourceforge.net/projects/webarchivext/rss"
  name "Web Archive Extractor"
  homepage "https://webarchivext.sourceforge.io/"

  app "WebArchiveExtractor.app"
end
