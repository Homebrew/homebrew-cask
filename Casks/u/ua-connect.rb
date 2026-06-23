cask "ua-connect" do
  version "1.9.5,3731"
  sha256 "e6c3c40aa7d54cf988eeaace53e842c42cd616e61292eff653416073ed188ed2"

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
  depends_on macos: :big_sur

  app "UA Connect.app"

  uninstall launchctl: "com.uaudio.bsd.helper",
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
