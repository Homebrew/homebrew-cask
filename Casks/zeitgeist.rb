cask "zeitgeist" do
  version "2.0.2"
  sha256 "e5b28b70590d201a24313f0395b5452c5a25003b62b7198ff151b3e1858c0812"

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
