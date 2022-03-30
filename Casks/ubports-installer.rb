cask "ubports-installer" do
  version "0.9.5-beta"
  sha256 "178ed0bd936888ec6512de3cfe5ff20041a7cd92a507334d85d9873b2256dae6"

  url "https://github.com/ubports/ubports-installer/releases/download/#{version}/ubports-installer_#{version}_mac_x64.dmg",
      verified: "github.com/ubports/ubports-installer/"
  name "ubports-installer"
  desc "Application to install ubports on mobile devices"
  homepage "https://ubports.com/"

  # This Ubuntu Touch installer URL redirects to the appropriate file on GitHub.
  # NOTE: This is the x64 URL, so this `livecheck` block may need to be updated
  # if/when they publish an ARM64 dmg.
  livecheck do
    url "https://devices.ubuntu-touch.io/installer/dmg"
    strategy :header_match
  end

  app "ubports-installer.app"

  zap trash: [
    "~/Library/Application Support/ubports-installer",
    "~/Library/Preferences/com.ubports.installer.plist",
    "~/Library/Saved Application State/com.ubports.installer.savedState",
  ]
end
