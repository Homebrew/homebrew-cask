cask "yakyak" do
  version "1.5.11"
  sha256 "c5b8c079d7ba076dc5c03cd00c8950cb5f7ce6400b33dc3ef58d271c0700502b"

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
