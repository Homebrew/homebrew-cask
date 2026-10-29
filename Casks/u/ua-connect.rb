cask "ua-connect" do
  version "1.11.0,3905"
  sha256 "b6d25d76dd1f52a49489255e59c55e3173b07f65b1cff1a55fa63021c49628d1"

  url "https://builds.uaudio.com/apps/UA_Connect/UA_Connect_#{version.csv.first.dots_to_underscores}_#{version.csv.second}_Mac.dmg"
  name "UA Connect"
  desc "Software installer and device manager for Universal Audio products"
  homepage "https://www.uaudio.com/pages/download-ua-connect"

  livecheck do
    url "https://www.uaudio.com/apps/uaconnect/mac/installer"
    regex(%r{/UA[._-]Connect[._-]v?(\d+(?:[._]\d+)+)[._-](\d+)(?:[._-]Mac)?\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  auto_updates true
  depends_on :macos

  app "UA Connect.app"

  uninstall launchctl: [
              "com.uaudio.bsd.helper",
              "com.uaudio.uac.launch-helper",
            ],
            quit:      "com.uaudio.ua-connect",
            delete:    [
              "/Library/LaunchDaemons/com.uaudio.bsd.helper.plist",
              "/Library/PrivilegedHelperTools/com.uaudio.bsd.helper",
            ]

  zap trash: [
    "~/Library/Application Support/UA Connect",
    "~/Library/Application Support/Universal Audio/UA Connect",
    "~/Library/Logs/UA Connect",
    "~/Library/Logs/Universal Audio/UA Connect.log",
    "~/Library/Preferences/com.uaudio.ua-connect.plist",
  ]
end
