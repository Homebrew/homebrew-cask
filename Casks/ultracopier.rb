cask "ultracopier" do
  version "2.2.6.5"
  sha256 "93040d8f70f87bdf318af307ac55e90feaa17c7c212fb70950d30b6c7071333e"

  url "https://cdn.confiared.com/ultracopier.herman-brule.com/files/#{version}/ultracopier-mac-os-x-#{version}.dmg",
      verified: "cdn.confiared.com/ultracopier.herman-brule.com/files/"
  name "ultracopier"
  desc "Replacement for files copy dialogs"
  homepage "https://ultracopier.herman-brule.com/"

  livecheck do
    url "https://ultracopier.herman-brule.com/#download"
    regex(/ultracopier[._-]mac[._-]os[._-]x[._-](\d+(?:\.\d+)+)\.dmg/i)
  end

  app "ultracopier.app"

  zap trash: [
    "~/Library/Preferences/com.ultracopier.Ultracopier.plist",
    "~/Library/Preferences/com.yourcompany.ultracopier.plist",
    "~/Library/Saved Application State/com.yourcompany.ultracopier.savedState",
  ]
end
