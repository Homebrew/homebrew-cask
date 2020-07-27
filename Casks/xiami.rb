cask "xiami" do
  version "7.5.8,30b52410ba8955c21df3c3555fa75f6c:a916a2565fc172a83bc0106f1f4c23d5"
  sha256 "6afc939ec54927ef8cee8ab4c015477e3efbda9e638242877bffadd183f39bb2"

  url "https://files.xiami.com/xiamiMac/#{version.after_comma.before_colon}/#{version.after_colon}.zip"
  appcast "https://g.alicdn.com/music/desktop-app/XiamiMac.xml"
  name "Xiami"
  name "虾米音乐"
  homepage "https://www.xiami.com/"

  app "虾米音乐.app"

  uninstall quit: "com.xiami.client"

  zap trash: [
    "~/Library/Application Support/XIAMI-MUSIC",
    "~/Library/Application Support/com.xiami.client",
    "~/Library/Preferences/com.xiami.client.helper.plist",
    "~/Library/Preferences/com.xiami.client.plist",
    "~/Library/Saved Application State/com.xiami.client.savedState",
  ]
end
