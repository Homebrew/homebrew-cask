cask "youlean-loudness-meter" do
  version "2.5.11,2025,07"
  sha256 "f360b6b5a7859504cb9358ae5d93715982b96a1a43e3526c26b03c19c575c894"

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

  no_autobump! because: :requires_manual_review

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
