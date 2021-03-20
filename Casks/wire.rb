cask "wire" do
  version "3.23.4046"
  sha256 "3a3526715675c1262fd60b02ac6dfb96abacfc403fce8426bc9e40c8040868a6"

  url "https://github.com/wireapp/wire-desktop/releases/download/macos%2F#{version}/Wire.pkg",
      verified: "github.com/wireapp/wire-desktop/"
  name "Wire"
  desc "Collaboration platform focusing on security"
  homepage "https://wire.com/"

  # We need to check all releases since not all releases are for macOS.
  livecheck do
    url "https://github.com/wireapp/wire-desktop/releases"
    strategy :page_match
    regex(%r{href=.*?/macos%2F(\d+(?:\.\d+)*)/Wire\.pkg}i)
  end

  pkg "Wire.pkg"

  uninstall pkgutil: "com.wearezeta.zclient.mac",
            signal:  [
              ["TERM", "com.wearezeta.zclient.mac.helper"],
              ["TERM", "com.wearezeta.zclient.mac"],
            ]

  zap trash: "~/Library/Containers/com.wearezeta.zclient.mac"
end
