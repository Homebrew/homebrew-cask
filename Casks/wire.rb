cask "wire" do
  version "3.19.3799"
  sha256 "8933f3c4180f072ebb21d0e624a43e904a97e10fa682a7f9e596b41b1eb168eb"

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
