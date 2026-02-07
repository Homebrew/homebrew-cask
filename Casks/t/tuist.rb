cask "tuist" do
  version "4.141.0"
  sha256 "659366dff2c28642cabe46f0bdf02a572e178b5ff4eb62429720c9a490f1dfa4"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
