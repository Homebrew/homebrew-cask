cask "thonny" do
  version "3.2.7"
  sha256 "0dc9d7b34bbe70cc3256575cfaed055614e8967dd3a26b8ce088998529429042"

  # github.com/thonny/thonny/ was verified as official when first introduced to the cask
  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-#{version}.pkg"
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
