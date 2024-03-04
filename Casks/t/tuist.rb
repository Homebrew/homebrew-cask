cask "tuist" do
  version "4.5.0"
  sha256 "991630e8c406c9630fe7fcfc571c5402ccee03d389c3a53ab9544db049d9a2b1"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
