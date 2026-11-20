cask "unifi-identity-endpoint" do
  version "4.3.0,33561c14-bddd-500d-9fe7-2baa836bd457,4ee6"
  sha256 "b62b181d37fe5c3c1b9d794460b85c73eb784d446ec211f0d89a4e8d51802ede"

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

  pkg "UniFi Endpoint.pkg"

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
