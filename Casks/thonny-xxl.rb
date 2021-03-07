cask "thonny-xxl" do
  version "3.3.6"
  sha256 "3ecb0f61110e98263b0668bf80c73d33eb0a6b8f432a6e2f9309ddb6d241d4a4"

  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-xxl-#{version}.pkg",
      verified: "github.com/thonny/thonny/"
  appcast "https://github.com/thonny/thonny/releases.atom"
  name "Thonny (XXL bundle)"
  desc "Python IDE for beginners"
  homepage "https://thonny.org/"

  conflicts_with cask: "thonny"

  pkg "thonny-xxl-#{version}.pkg"

  uninstall quit:    "org.thonny.Thonny",
            pkgutil: "org.thonny.Thonny.component",
            delete:  "/Applications/Thonny.app"

  zap trash: [
    "~/Library/Saved Application State/org.thonny.Thonny.savedState",
    "~/Library/Thonny",
  ]
end
