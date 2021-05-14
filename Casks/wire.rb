cask "wire" do
  version "3.25.4095"
  sha256 "b20cd46e219ebb29ab6e2387ed8acc40ac899f3bf94a5ebce6f4f0a1fbaaeb05"

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
