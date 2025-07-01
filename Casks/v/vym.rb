cask "vym" do
  version "2.9.579"
  sha256 "67bb261e9bf15bbf7f50d927137ea5e2238099f3486c35ccce94496e0a2630f1"

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
