cask "tuist" do
  version "4.3.3"
  sha256 "9e3e8ef56fdaf16eb5806e1bb104176eebc6961cb7159b67ff574c72118b1aad"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
