cask "tuist" do
  version "4.194.2"
  sha256 "1558555a3f29e7a03798cbfafd318ae447377dab0c5942da3e276b71989cc30a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
