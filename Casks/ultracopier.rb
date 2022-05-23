cask "ultracopier" do
  version "2.2.5.1"
  sha256 "bcb6c7069c4acf2793d8010ddf51e0b6e908f37bba8722e23d97f4ee895aa969"

  url "https://cdn.confiared.com/ultracopier.first-world.info/files/#{version}/ultracopier-mac-os-x-#{version}.dmg",
      verified: "cdn.confiared.com/ultracopier.first-world.info/files/"
  name "ultracopier"
  desc "Replacement for files copy dialogs"
  homepage "http://ultracopier.first-world.info/"

  livecheck do
    url "http://ultracopier.first-world.info/download-all.html"
    regex(/ultracopier[._-]mac[._-]os[._-]x[._-](\d+(?:\.\d+)+)\.dmg/i)
  end

  app "ultracopier.app"

  zap trash: [
    "~/Library/Preferences/com.ultracopier.Ultracopier.plist",
    "~/Library/Preferences/com.yourcompany.ultracopier.plist",
    "~/Library/Saved Application State/com.yourcompany.ultracopier.savedState",
  ]
end
