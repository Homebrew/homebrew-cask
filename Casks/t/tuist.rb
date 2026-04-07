cask "tuist" do
  version "4.174.7"
  sha256 "ab725fb7c32baa19c0e04abdcf80ddae3aa2ecbdd6f689cc6095c24f69636bca"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
