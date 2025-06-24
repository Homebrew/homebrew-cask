cask "vym" do
  version "2.9.577"
  sha256 "76735fd8453e71af84d0631ffb3af663205e7fee7e8a355864ac598aafa2e1c5"

  url "https://downloads.sourceforge.net/vym/vym-#{version}.dmg"
  name "VYM (View Your Mind)"
  desc "Generate and manipulate maps which show your thoughts"
  homepage "https://sourceforge.net/projects/vym/"

  livecheck do
    url :url
    regex(%r{url=.*?/vym[._-]v?(\d+(?:\.\d+)+)\.(?:dmg|pkg)}i)
  end

  app "vym.app"

  zap trash: "~/Library/Preferences/com.insilmaril.vym.plist"

  caveats do
    requires_rosetta
  end
end
