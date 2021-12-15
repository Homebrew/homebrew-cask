cask "unipro-ugene" do
  version "41.0"
  sha256 "dfaeea2e214a138db6453f8809e652db04ac8fc611a0cfd2f4087fb968a2a8a0"

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
