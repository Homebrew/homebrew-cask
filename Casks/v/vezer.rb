cask "vezer" do
  version "1.9.9,795"
  sha256 "5d87ef2281885c5a5fb7c2aa6fcc4343fd14caa94aba4d4be095f7bbf116984d"

  url "https://dl.imimot.com/Vezer#{version.csv.first}_#{version.csv.second}.zip"
  name "Vezér"
  desc "Control and synchronisation of MIDI, OSC or DMX"
  homepage "https://imimot.com/vezer/"

  livecheck do
    url "https://imimot.com/versions/VezerAppcast.php?beta=0&app_version=0"
    regex(/Vezer[._-]?v?(?:\d+(?:\.\d+)+)[._-](\d+(?:v\d+)?)\.zip/i)
    strategy :sparkle do |item|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[1]}"
    end
  end

  auto_updates true

  app "Vezér.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lov.veze-r.sfl*",
    "~/Library/HTTPStorages/com.lov.Veze-r",
    "~/Library/Preferences/com.lov.Veze-r.plist",
    "~/Library/Saved Application State/com.lov.Veze-r.savedState",
  ]
end
