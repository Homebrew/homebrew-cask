cask "youlean-loudness-meter" do
  version "2.5.13,2025,08"
  sha256 "1aabef5cb34edd6f7254cf3b96b6d1650e7a312091ff523b434278e1824fade8"

  url "https://cdn.youlean.co/wp-content/uploads/#{version.csv.second}/#{version.csv.third}/Youlean-Loudness-Meter-#{version.major}-V#{version.csv.first}-macOS.dmg"
  name "Youlean Loudness Meter"
  desc "Loudness meter"
  homepage "https://youlean.co/youlean-loudness-meter/"

  livecheck do
    url "https://youlean.co/download-youlean-loudness-meter/"
    regex(%r{href=.*?/(\w+)/(\w+)/youlean[._-]loudness[._-]meter[._-]\d+[._-]v?(\d+(?:\.\d+)+)[._-]macOS\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true

  pkg "Youlean Loudness Meter #{version.major} - Installer.pkg"

  uninstall pkgutil: [
    "com.Youlean.aax.pkg.YouleanLoudnessMeter#{version.major}",
    "com.Youlean.au.pkg.YouleanLoudnessMeter#{version.major}",
    "com.Youlean.cmd.pkg.YouleanLoudnessMeter#{version.major}",
    "com.Youlean.standalone.pkg.YouleanLoudnessMeter#{version.major}",
    "com.Youlean.vst.pkg.YouleanLoudnessMeter#{version.major}",
    "com.Youlean.vst3.pkg.YouleanLoudnessMeter#{version.major}",
  ]

  zap trash: [
    "~/Library/Application Support/Youlean/Youlean Loudness Meter*",
    "~/Library/Caches/com.Youlean.standalone.Youlean-Loudness-Meter*",
    "~/Library/HTTPStorages/com.Youlean.standalone.Youlean-Loudness-Meter*",
  ]
end
