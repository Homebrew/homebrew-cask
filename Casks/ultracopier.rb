cask "ultracopier" do
  version "2.2.4.14"
  sha256 "b9acc8bd55ca48b99596c3f28c85aebca51f0381c50161c5dc3da5fd0c937c10"

  url "https://cdn.confiared.com/files.first-world.info/ultracopier/#{version}/ultracopier-mac-os-x-#{version}.dmg",
      verified: "cdn.confiared.com/files.first-world.info/ultracopier/"
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
