cask "unifi-identity-endpoint" do
  version "4.2.2,26d981ba-1ce5-431e-98cf-2133b2889af9,da2c"
  sha256 "6f8a76e606cbc362986aac3f0b367e13bc1095e8a5466c2acdd016d1abc5b434"

  url "https://fw-download.ubnt.com/data/uid-identity-standard-desktop-app/#{version.csv.third}-macOS-#{version.csv.first}-#{version.csv.second}.pkg"
  name "UniFi Identity Endpoint"
  desc "License free Wi-Fi, VPN, and Access Application for Organizations"
  homepage "https://www.ui.com/identity"

  livecheck do
    url "https://download.uid.ui.com/?app=DESKTOP-IDENTITY-STANDARD-MACOS"
    regex(/(\w+)[._-]macOS[._-](\d+(?:\.\d+)+)[._-](\h{8}-\h{4}-\h{4}-\h{4}-\h{12})/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[3]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on :macos

  pkg "#{version.csv.third}-macOS-#{version.csv.first}-#{version.csv.second}.pkg"

  uninstall launchctl: [
              "application.com.ui.uid.standard-desktop.93942643.93942648",
              "com.ui.uid.standard-desktop.privilegedtool",
              "com.ui.uid.standard-desktop.startup",
            ],
            quit:      "com.ui.uid.standard-desktop",
            pkgutil:   "com.ui.uid.standard-desktop",
            delete:    "/Applications/UniFi Endpoint.app"

  zap trash: "~/Library/Application Support/com.ui.uid.standard-desktop"
end
