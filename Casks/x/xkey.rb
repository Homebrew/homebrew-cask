cask "xkey" do
  version "1.2.20,20260206.1"
  sha256 "ddab41e0291765ddd639ed2de9871a729ae67030cb689ed07cf6a7e84edb919b"

  url "https://github.com/xmannv/xkey/releases/download/v#{version.csv.first}-#{version.csv.second}/XKey.dmg"
  name "XKey"
  desc "Vietnamese input method engine"
  homepage "https://github.com/xmannv/xkey/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)(?:-(.+))?$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "XKey.app"

  zap trash: [
    "~/Library/Application Support/XKey",
    "~/Library/Preferences/com.codetay.XKey.plist",
  ]
end
