cask "thonny" do
  version "3.3.4"
  sha256 "19a0c12e07f28f9d0c33d193f81685893a0b16cb50d1298386edaa281a05795d"

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
