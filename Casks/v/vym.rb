cask "vym" do
  version "3.0.0"
  sha256 "a255f90a7c1a264f09092bf608b8bd3f595c0673f6c57f1f9a083e0c4b196edb"

  url "https://downloads.sourceforge.net/vym/vym-#{version}.dmg"
  name "VYM (View Your Mind)"
  desc "Generate and manipulate maps which show your thoughts"
  homepage "https://sourceforge.net/projects/vym/"

  livecheck do
    url :url
    regex(%r{url=.*?/vym[._-]v?(\d+(?:\.\d+)+)\.(?:dmg|pkg)}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :big_sur

  app "vym.app"

  zap trash: "~/Library/Preferences/com.insilmaril.vym.plist"

  caveats do
    requires_rosetta
  end
end
