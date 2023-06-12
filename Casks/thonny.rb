cask "thonny" do
  version "4.1.1"
  sha256 "df1fdb40fd38487dcab687404f9c0fa31fc29783d2842c7d836c8d9e09d5989c"

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
