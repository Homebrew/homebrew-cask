cask "zeitgeist" do
  version "2.0.3"
  sha256 "ba4742298dac1d8fd65c04fabf87ad607af15b84b1680f82878481fa2a66bb34"

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
