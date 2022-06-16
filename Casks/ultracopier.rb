cask "ultracopier" do
  version "2.2.6.0"
  sha256 "1a84a3f03a4df124a8cc98e01ad455b300f66bcdc1675661eb25762a56084d38"

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
