cask "tuist" do
  version "3.33.3"
  sha256 "f28bb22b2edd6d906983bf9a0b62a41ab4d9e02da7b8d74ec47864d11b1bf0d6"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
