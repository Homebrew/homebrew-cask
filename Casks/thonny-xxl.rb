cask "thonny-xxl" do
  version "3.2.7"
  sha256 "d22a59aebf219c0f8afae3b6d340ef08804311e7e4e19bca76b51620386cf9cc"

  # github.com/thonny/thonny/ was verified as official when first introduced to the cask
  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-xxl-#{version}.pkg"
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
