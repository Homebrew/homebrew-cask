cask "thonny" do
  version "4.1.0"
  sha256 "f6988e7060c25289f9fbc5b8c0eaf8be77124f7bf1c6f9587bc4cdb006c8578e"

  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-#{version}.pkg",
      verified: "github.com/thonny/thonny/"
  name "Thonny"
  desc "Python IDE for beginners"
  homepage "https://thonny.org/"

  livecheck do
    url "https://github.com/thonny/thonny/releases/"
    regex(/thonny[._-]?(\d+(?:\.\d+)*)\.pkg/i)
    strategy :page_match
  end

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
