cask "wire" do
  version "3.24.4059"
  sha256 "5ecf860e5675a11bb989d46968165bc50f7c729c090b407f6e94832b511b5bfe"

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
