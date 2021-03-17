cask "trufont" do
  version "0.5.0"
  sha256 "bdc20b8e11f51b58595a8ed2ff2e6a9684a581c739ed5c1fd500ca8b8cd05fcb"

  url "https://github.com/trufont/trufont/releases/download/#{version}/TruFont.app.zip",
      verified: "github.com/trufont/trufont/"
  appcast "https://github.com/trufont/trufont/releases.atom"
  name "TruFont"
  desc "Streamlined and hackable font editor"
  homepage "https://trufont.github.io/"

  app "TruFont.app"
end
