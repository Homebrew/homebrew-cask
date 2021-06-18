cask "yakyak" do
  version "1.5.11.4"
  sha256 "65adc84101e41bf998c31890a3b63b5f6ae927df3c8189d17c580d21a8460d3f"

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
