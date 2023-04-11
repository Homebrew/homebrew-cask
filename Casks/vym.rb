cask "vym" do
  version "2.9.0"
  sha256 "2243e0d2c89dc9eef53ffac8d4da084650247f025011a522aeba0c19e7857be6"

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
