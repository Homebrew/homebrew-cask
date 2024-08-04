cask "ultracopier" do
  version "2.2.6.8"
  sha256 "6018755f14d73156a4ba7746e481b466fcf00deec3805e6a8306c8e62a03400b"

  url "https://cdn.confiared.com/ultracopier.herman-brule.com/files/#{version}/ultracopier-mac-os-x-#{version}.dmg",
      verified: "cdn.confiared.com/ultracopier.herman-brule.com/files/"
  name "ultracopier"
  desc "Replacement for files copy dialogs"
  homepage "https://ultracopier.herman-brule.com/"

  deprecate! date: "2024-08-04", because: :discontinued

  depends_on macos: ">= :high_sierra"

  app "ultracopier.app"

  zap trash: [
    "~/Library/Preferences/com.ultracopier.Ultracopier.plist",
    "~/Library/Preferences/com.yourcompany.ultracopier.plist",
    "~/Library/Saved Application State/com.yourcompany.ultracopier.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
