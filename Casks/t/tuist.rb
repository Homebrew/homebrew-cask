cask "tuist" do
  version "4.99.2"
  sha256 "61d4604748c3c60cea3ca49d0358c6f539e163b04f164cb1858306aaa21b2615"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
