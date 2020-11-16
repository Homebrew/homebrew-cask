cask "thonny-xxl" do
  version "3.3.0"
  sha256 "a5b0a56f088cb4c6c904b054c4c4b3bebc570219c6e6c1f207ed528614ce9eee"

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
