cask "ultracopier" do
  version "2.2.6.2"
  sha256 "e1c39e841e4a49775bfb30a731a6e773088a5a3924158f1a357613d168442154"

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
