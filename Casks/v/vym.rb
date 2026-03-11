cask "vym" do
  version "2.9.2"
  sha256 "84828c7ac0b278384e0c84e36c3b731065c0520d240fc44da2dcc7481036324f"

  url "https://downloads.sourceforge.net/vym/vym-#{version}.dmg"
  name "VYM (View Your Mind)"
  desc "Generate and manipulate maps which show your thoughts"
  homepage "https://sourceforge.net/projects/vym/"

  livecheck do
    url :url
    regex(%r{url=.*?/vym[._-]v?(\d+(?:\.\d+)+)\.(?:dmg|pkg)}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "vym.app"

  zap trash: "~/Library/Preferences/com.insilmaril.vym.plist"

  caveats do
    requires_rosetta
  end
end
