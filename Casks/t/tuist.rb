cask "tuist" do
  version "4.53.3"
  sha256 "7c978c3b255182d11092002b20863eab3a0956a6a7b00ea84576b7fa26f74638"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
