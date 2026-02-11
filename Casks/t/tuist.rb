cask "tuist" do
  version "4.143.0"
  sha256 "79fdfcac01e513bafb5ea13a958cadc322a9b34515702084e550a583bc655a9c"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
