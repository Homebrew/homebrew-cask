cask "wire" do
  version "3.20.3912"
  sha256 "19bf0e861bc38b5fff938a6d48dad3f2e341a22259658af3ea8cc5813f6e33b3"

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
