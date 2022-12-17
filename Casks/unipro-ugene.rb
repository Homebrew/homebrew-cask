cask "unipro-ugene" do
  version "45.0"
  sha256 "7f3a6cd8edf4afb72d041a5ff747a5b88b6f89a12fc8fc6b11463a4e8c4d3c87"

  url "https://github.com/ugeneunipro/ugene/releases/download/#{version}/ugene-#{version}-mac-x86-64.dmg",
      verified: "github.com/ugeneunipro/ugene/"
  name "Ugene"
  desc "Free open-source cross-platform bioinformatics software"
  homepage "https://ugene.net/"

  app "Unipro UGENE.app"

  zap trash: [
    "~/Library/Preferences/com.unipro.UGENE.plist",
    "~/Library/Preferences/net.ugene.ugene.plist",
  ]
end
