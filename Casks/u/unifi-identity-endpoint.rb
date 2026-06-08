cask "unifi-identity-endpoint" do
  version "4.0.3,1895971c-f843-4d21-b7fb-e08dd3be3ffc,8f79"
  sha256 "4f0848e4aad164e3fd375b92ad9a8055bb035be4d06e580b3859cfb6e3dbe027"

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

  auto_updates true
  depends_on macos: :big_sur

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
