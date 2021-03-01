cask "wwdcsrt" do
  version "1.6.2"
  sha256 "6df285d62a4c9c56d20d6165aaeb22c0d88856bbac87fa0afb2f27caefa17486"

  url "https://github.com/ssamadgh/WWDCsrt/releases/download/v#{version}/WWDC.srt.zip"
  name "WWDC.srt"
  homepage "https://github.com/ssamadgh/WWDCsrt"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "WWDC.srt.app"
end
