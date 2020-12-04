cask "zeitgeist" do
  version "2.0.1"
  sha256 "96aa56490747b12b51e8c28e6243f75b2150b1b8d3ac26572c35c4a6793e9c6f"

  url "https://github.com/daneden/zeitgeist/releases/download/v#{version}/Zeitgeist.app.zip",
      verified: "github.com/daneden/zeitgeist/"
  appcast "https://github.com/daneden/zeitgeist/releases.atom"
  name "Zeitgeist"
  desc "Keep an eye on your Vercel deployments"
  homepage "https://zeitgeist.daneden.me/"

  depends_on macos: ">= :big_sur"

  app "Zeitgeist.app"

  zap trash: [
    "~/Library/Application Scripts/me.daneden.Zeitgeist",
    "~/Library/Containers/me.daneden.Zeitgeist",
  ]
end
