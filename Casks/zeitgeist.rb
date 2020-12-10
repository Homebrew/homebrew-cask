cask "zeitgeist" do
  version "2.0.4"
  sha256 "82c9805cb2e826ee47e983b46081cb0cd63cf20edab0c89dade67bc474e482b8"

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
