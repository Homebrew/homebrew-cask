cask "wire" do
  version "3.21.3959"
  sha256 "a1b2d86656953032df898f70d367f8e0cff7b4b1720309325b725a1e1cfeff39"

  # github.com/wireapp/wire-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/wireapp/wire-desktop/releases/download/macos%2F#{version}/Wire.pkg"
  appcast "https://github.com/wireapp/wire-desktop/releases.atom"
  name "Wire"
  desc "Collaboration platform focusing on security"
  homepage "https://wire.com/"

  pkg "Wire.pkg"

  uninstall pkgutil: "com.wearezeta.zclient.mac",
            signal:  [
              ["TERM", "com.wearezeta.zclient.mac.helper"],
              ["TERM", "com.wearezeta.zclient.mac"],
            ]

  zap trash: "~/Library/Containers/com.wearezeta.zclient.mac"
end
