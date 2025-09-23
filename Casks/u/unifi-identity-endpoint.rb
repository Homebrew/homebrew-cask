cask "unifi-identity-endpoint" do
  version "3.3.2,c3b3e73c-cafe-4a7b-b851-e15218744838,3afc"
  sha256 "991ca84332ff098012eed8613f84779e9a44e13fdde45b9f77a75af3e0716669"

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
