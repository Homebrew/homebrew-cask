cask "tuist" do
  version "4.5.1"
  sha256 "ec8880ee09af8d21486e0b70ab2d880cbec04210482c47474dcd06150fb8d48d"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
