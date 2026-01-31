cask "tuist" do
  version "4.133.4"
  sha256 "cddea6e6dc2a99290e082293020dbb345ef1e7602380d19e0bd590c2e0324e26"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
