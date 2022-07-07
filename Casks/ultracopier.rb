cask "ultracopier" do
  version "2.2.6.1"
  sha256 "b9293f95d9a11dc69070eb6ca2f5c0acf41b65071c09639bed83aa84f2199c9d"

  url "https://cdn.confiared.com/ultracopier.first-world.info/files/#{version}/ultracopier-mac-os-x-#{version}.dmg",
      verified: "cdn.confiared.com/ultracopier.first-world.info/files/"
  name "ultracopier"
  desc "Replacement for files copy dialogs"
  homepage "http://ultracopier.first-world.info/"

  livecheck do
    url "https://ultracopier.first-world.info/#download"
    regex(/ultracopier[._-]mac[._-]os[._-]x[._-](\d+(?:\.\d+)+)\.dmg/i)
  end

  app "ultracopier.app"

  zap trash: [
    "~/Library/Preferences/com.ultracopier.Ultracopier.plist",
    "~/Library/Preferences/com.yourcompany.ultracopier.plist",
    "~/Library/Saved Application State/com.yourcompany.ultracopier.savedState",
  ]
end
