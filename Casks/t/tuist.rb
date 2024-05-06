cask "tuist" do
  version "4.12.0"
  sha256 "84e5e7e4a1e71535aa3ba0c20ae86235a61cd15c97070ae3e68e0fa122e49206"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
