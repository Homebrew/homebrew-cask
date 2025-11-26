cask "unipro-ugene" do
  version "53.0"
  sha256 "ce99a837e3a6b336c2fff2d1b46e3281e8d5c4ca27d301e5f40a102684d7e364"

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

  caveats do
    requires_rosetta
  end
end
