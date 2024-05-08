cask "youlean-loudness-meter" do
  version "2.4.4,2023,03"
  sha256 "7fcc90ad99d2b2bdba60d5a00cd128bb4efaf3fa2982e965026f1c21841d4132"

  url "https://cdn.youlean.co/wp-content/uploads/#{version.csv.second}/#{version.csv.third}/Youlean-Loudness-Meter-#{version.major}-V#{version.csv.first}-macOS.zip"
  name "Youlean Loudness Meter"
  desc "Loudness meter"
  homepage "https://youlean.co/youlean-loudness-meter/"

  livecheck do
    url "https://youlean.co/download-youlean-loudness-meter/"
    regex(%r{href=.*?/(\w+)/(\w+)/youlean[._-]loudness[._-]meter[._-]\d+[._-]v?(\d+(?:\.\d+)+)[._-]macOS\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true

  pkg "Youlean Loudness Meter #{version.major} - V#{version.csv.first} - macOS/Youlean Loudness Meter #{version.major} - V#{version.csv.first} Installer.pkg"

  uninstall pkgutil: [
    "com.Youlean.aax.pkg.YouleanLoudnessMeter#{version.major}",
    "com.Youlean.au.pkg.YouleanLoudnessMeter#{version.major}",
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
