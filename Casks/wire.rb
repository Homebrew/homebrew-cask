cask "wire" do
  version "3.29.4490"
  sha256 "4d013367b8d67614b47a10231890810f76d3c2ba7beeb6a3b269d967f4fbe76b"

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
