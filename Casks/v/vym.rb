cask "vym" do
  version "2.9.22"
  sha256 "4859da0de9bc32f183ef2c73af63665b4962303f950c924a8baad903bfd2f418"

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
end
