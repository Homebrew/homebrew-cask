cask "tuist" do
  version "4.198.2"
  sha256 "4ab2043b2cfdad3b100f92e447f976601e0e02ba54fba7468f9a9a00602e1069"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
