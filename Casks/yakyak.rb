cask "yakyak" do
  version "1.5.11.1"
  sha256 "a32888b8ae8a71cd17aaf804e03156d9176be80537e3338050db770aae8a3d97"

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
