cask "xiami" do
  version "7.5.8,7058,30b52410ba8955c21df3c3555fa75f6c,a916a2565fc172a83bc0106f1f4c23d5"
  sha256 "6afc939ec54927ef8cee8ab4c015477e3efbda9e638242877bffadd183f39bb2"

  url "https://files.xiami.com/xiamiMac/#{version.csv.third}/#{version.csv.fourth}.zip"
  name "Xiami"
  name "虾米音乐"
  desc "Music content management and distribution"
  homepage "https://www.xiami.com/"

  livecheck do
    url "https://g.alicdn.com/music/desktop-app/XiamiMac.xml"
    regex(%r{/([^/]+)/([^/]+)\.zip}i)
    strategy :sparkle do |item, regex|
      item.url.scan(regex).map do |match|
        "#{item.short_version},#{item.version},#{match[0]},#{match[1]}"
      end
    end
  end

  app "虾米音乐.app"

  uninstall quit: "com.xiami.client"

  zap trash: [
    "~/Library/Application Support/com.xiami.client",
    "~/Library/Application Support/XIAMI-MUSIC",
    "~/Library/Preferences/com.xiami.client.helper.plist",
    "~/Library/Preferences/com.xiami.client.plist",
    "~/Library/Saved Application State/com.xiami.client.savedState",
  ]
end
