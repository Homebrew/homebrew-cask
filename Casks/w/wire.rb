cask "wire" do
  version "3.31.4556"
  sha256 "a9145db7f4ef4af4374623bf237e874fe0bcf3e7afde015c8fe25a106dfc05f5"

  url "https://github.com/wireapp/wire-desktop/releases/download/macos%2F#{version}/Wire.pkg",
      verified: "github.com/wireapp/wire-desktop/"
  name "Wire"
  desc "Collaboration platform focusing on security"
  homepage "https://wire.com/"

  livecheck do
    url :url
    regex(%r{^macos[/._-]v?(\d+(?:\.\d+)+)$}i)
  end

  pkg "Wire.pkg"

  uninstall pkgutil: "com.wearezeta.zclient.mac",
            signal:  [
              ["TERM", "com.wearezeta.zclient.mac.helper"],
              ["TERM", "com.wearezeta.zclient.mac"],
            ]

  zap trash: "~/Library/Containers/com.wearezeta.zclient.mac"
end
