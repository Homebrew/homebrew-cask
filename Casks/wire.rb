cask "wire" do
  version "3.21.3959"
  sha256 "a1b2d86656953032df898f70d367f8e0cff7b4b1720309325b725a1e1cfeff39"

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
