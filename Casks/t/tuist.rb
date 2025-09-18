cask "tuist" do
  version "4.76.1"
  sha256 "e0638dab495eb2f0ad6dc8d46c1fd98dd97ff25042b13f25ee30aa5a8d42f4e5"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
