cask "webarchiveextractor" do
  version "1.0"
  sha256 "fbaf4cea8473966145202eda1cbb9fdcfc32a7ba291a247af1d2858663517f61"

  url "https://github.com/robrohan/WebArchiveExtractor/releases/download/v#{version}/WebArchiveExtractor_#{version}.zip",
      verified: "github.com/robrohan/WebArchiveExtractor/"
  name "Web Archive Extractor"
  desc "Extracts content from webarchive files to a directory"
  homepage "https://webarchivext.sourceforge.io/"

  app "WebArchiveExtractor.app"
end
