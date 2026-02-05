cask "unifi-identity-endpoint" do
  version "3.6.0,96918512-1d16-4410-bc24-5d60a514cd52,c816"
  sha256 "d131daaa870970042a484a8e153a561e400dc04a28f83eb77259103d38e3cb4d"

  url "https://fw-download.ubnt.com/data/uid-identity-standard-desktop-app/#{version.csv.third}-macOS-#{version.csv.first}-#{version.csv.second}.pkg",
      verified: "fw-download.ubnt.com/data/uid-identity-standard-desktop-app/"
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

  depends_on macos: ">= :big_sur"

  pkg "#{version.csv.third}-macOS-#{version.csv.first}-#{version.csv.second}.pkg"

  uninstall launchctl: [
              "application.com.ui.uid.standard-desktop.93942643.93942648",
              "com.ui.uid.standard-desktop.privilegedtool",
              "com.ui.uid.standard-desktop.startup",
            ],
            quit:      "com.ui.uid.standard-desktop",
            pkgutil:   "com.ui.uid.standard-desktop",
            delete:    "/Applications/Identity.app"
end
