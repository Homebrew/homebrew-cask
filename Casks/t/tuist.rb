cask "tuist" do
  version "4.155.6"
  sha256 "9805f9799843e01f5ff57d2533d79eed17671c6d2dc8bdca09569837f4a2e074"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
