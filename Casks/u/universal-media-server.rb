cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "15.5.0"
  sha256 arm:   "c641649bb29864d48f29d5beb3e5052d5bd6e7485d308489ffd41f275fab32d8",
         intel: "32c7deb4f19adad106f7548a05f3cc2e0226f914579ae45333f99914703cb77b"

  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/UniversalMediaServer/UniversalMediaServer/"
  name "Universal Media Server"
  desc "Media server supporting DLNA, UPnP and HTTP(S)"
  homepage "https://www.universalmediaserver.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Universal Media Server.app"

  zap trash: "~/Library/Application Support/UMS"
end
