cask "thonny" do
  version "3.3.13"
  sha256 "e734766222e986a2cefc4a80b24fea132ac74fec6887dc55abc047dcc8a874c4"

  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-#{version}.pkg",
      verified: "github.com/thonny/thonny/"
  name "Thonny"
  desc "Python IDE for beginners"
  homepage "https://thonny.org/"

  livecheck do
    url "https://github.com/thonny/thonny/releases/"
    strategy :page_match
    regex(/thonny[._-]?(\d+(?:\.\d+)*)\.pkg/i)
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
