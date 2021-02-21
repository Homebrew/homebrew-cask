cask "thonny-xxl" do
  version "3.3.4"
  sha256 "903709ef9a514ebd2418f8fa3a6b8e0da0c9042d4fb298321b0e4eb6304c9207"

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
