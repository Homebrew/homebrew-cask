cask "yakyak" do
  version "1.5.11.2"
  sha256 "4347db28035648e86fc793b825fc079a40c230e672e01fab0f570fb7ac1e92fb"

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx-x64.zip"
  name "Yakyak"
  desc "Desktop chat client for Google Hangouts"
  homepage "https://github.com/yakyak/yakyak"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "YakYak-darwin-x64/YakYak.app"
end
