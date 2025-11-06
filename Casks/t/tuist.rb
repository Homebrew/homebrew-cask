cask "tuist" do
  version "4.100.0"
  sha256 "8839dd2bd4b8ae495f3d635320788fcd9482a9413617c54a002131215185d637"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
