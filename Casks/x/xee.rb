cask "xee" do
  version "3.5.4,69,1640101604"
  sha256 "12db74f58ee04f28193e18df964b6a8a8715dfe3f47c7dadc9fea44ead39be0c"

  url "https://dl.devmate.com/cx.c3.Xee3/#{version.csv.second}/#{version.csv.third}/Xee-#{version.csv.second}.zip",
      verified: "devmate.com/cx.c3.Xee3/"
  name "Xee³"
  desc "Image viewer and file browser"
  homepage "https://theunarchiver.com/xee"

  livecheck do
    url "https://updates.devmate.com/cx.c3.Xee3.xml"
    regex(%r{/(\d+)/Xee\d*?[_-]v?(\d+(?:\.\d+)*)\.(?:dmg|zip)}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[2]},#{match[1]}"
    end
  end

  auto_updates true

  app "Xee³.app"

  zap trash: [
    "~/Library/Application Support/Xee³",
    "~/Library/Caches/cx.c3.Xee3",
    "~/Library/Cookies/cx.c3.Xee3.binarycookies",
    "~/Library/Preferences/cx.c3.Xee3.plist",
  ]

  caveats do
    requires_rosetta
  end
end
