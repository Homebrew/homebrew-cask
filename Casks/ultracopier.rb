cask "ultracopier" do
  version "2.2.6.7"
  sha256 "3b0ffec99c56f03c84cf90dfe08c7850499ca929e18e339dc010a261023b03b1"

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
