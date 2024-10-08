cask "tuist" do
  version "4.29.0"
  sha256 "c44c075fd52c341a48ea5995a0ea56b529b2db38bf9b4452c73b3c90e3cba369"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
