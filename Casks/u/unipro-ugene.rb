cask "unipro-ugene" do
  version "52.1"
  sha256 "ac20a2303466bbf328473b9edd02c45d31c7d9bb3bd7956045b3d6356e365967"

  url "https://github.com/ugeneunipro/ugene/releases/download/#{version}/ugene-#{version}-mac-x86-64.dmg",
      verified: "github.com/ugeneunipro/ugene/"
  name "Ugene"
  desc "Free open-source cross-platform bioinformatics software"
  homepage "https://ugene.net/"

  depends_on macos: ">= :high_sierra"

  app "Unipro UGENE.app"

  zap trash: [
    "~/Library/Preferences/com.unipro.UGENE.plist",
    "~/Library/Preferences/net.ugene.ugene.plist",
  ]

  caveats do
    requires_rosetta
  end
end
