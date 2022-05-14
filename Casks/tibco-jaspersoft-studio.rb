cask "tibco-jaspersoft-studio" do
  version "6.19.1"
  sha256 "16fde8fea01e99f119ec59c7e343bf945ec85319f8e7c4e6feba2c835ce3060d"

  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/TIB_js-studiocomm_#{version}_macosx_x86_64.dmg",
      verified: "sourceforge.net/jasperstudio/"
  name "TIBCO Jaspersoft Studio"
  desc "Eclipse-based report development tool for JasperReports"
  homepage "https://community.jaspersoft.com/project/jaspersoft-studio"

  livecheck do
    url "https://community.jaspersoft.com/project/jaspersoft-studio/releases"
    regex(/TIB[._-]js[._-]studiocomm[._-]v?(\d+(?:\.\d+)+)[._-]macosx[._-]x86[._-]64\.dmg/i)
  end

  auto_updates true

  app "TIBCO Jaspersoft Studio #{version}.app"

  zap trash: [
    "~/JaspersoftWorkspace",
    "~/Library/Application Support/Jaspersoft Studio",
    "~/Library/Preferences/com.jaspersoft.studio.plist",
    "~/Library/Preferences/com.jaspersoft.studio.rcp.product.plist",
    "~/Library/Saved Application State/com.jaspersoft.studio.rcp.product.savedState",
  ]
end
