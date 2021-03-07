cask "thonny" do
  version "3.3.6"
  sha256 "42a2c3f902fc14ed97669732b7aedcef9a2f4ac54bf5ef567a21b11fefd566b3"

  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-#{version}.pkg",
      verified: "github.com/thonny/thonny/"
  appcast "https://github.com/thonny/thonny/releases.atom"
  name "Thonny"
  homepage "https://thonny.org/"

  conflicts_with cask: "thonny-xxl"

  pkg "thonny-#{version}.pkg"

  uninstall quit:    "org.thonny.Thonny",
            pkgutil: "org.thonny.Thonny.component",
            delete:  "/Applications/Thonny.app"

  zap trash: [
    "~/Library/Saved Application State/org.thonny.Thonny.savedState",
    "~/Library/Thonny",
  ]
end
