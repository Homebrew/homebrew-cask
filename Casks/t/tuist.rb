cask "tuist" do
  version "3.36.3"
  sha256 "2be0a179e44fd162988e70242c9cf883c97f3b439d54a806c94de949a316906d"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
