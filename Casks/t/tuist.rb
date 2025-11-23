cask "tuist" do
  version "4.106.2"
  sha256 "7da01df3d84681bad78f2e3ddc3db1b2e4f57fde934ef3afceb7ee2f77552640"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
