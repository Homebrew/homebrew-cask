cask "tuist" do
  version "4.81.1"
  sha256 "98182461c57da769b9dc248797616e54b932405c8fadc92df658301a2541df00"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
