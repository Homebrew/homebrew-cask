cask "thonny-xxl" do
  version "3.3.11"
  sha256 "5045f3c6891a1f3ae215435d45de39e7a9e351e85460a634c82774e26653e338"

  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-xxl-#{version}.pkg",
      verified: "github.com/thonny/thonny/"
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
