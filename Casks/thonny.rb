cask "thonny" do
  version "3.3.10"
  sha256 "986ea275c92e04e36d7d7bbe752ad355e47de1952d917c8afbfff201c8b328f8"

  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-#{version}.pkg",
      verified: "github.com/thonny/thonny/"
  name "Thonny"
  desc "Python IDE for beginners"
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
