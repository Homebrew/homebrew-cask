cask "zeitgeist" do
  version "2.1.2"
  sha256 "bbacae4f8f6e14d348e4cf7d5f3ee2d41b4cb82d7473715b6f758539c81c39fa"

  url "https://github.com/daneden/zeitgeist/releases/download/v#{version}/Zeitgeist.app.zip",
      verified: "github.com/daneden/zeitgeist/"
  name "Zeitgeist"
  desc "Keep an eye on your Vercel deployments"
  homepage "https://zeitgeist.daneden.me/"

  livecheck do
    url :url
    strategy :git
  end

  depends_on macos: ">= :big_sur"

  app "Zeitgeist.app"

  zap trash: [
    "~/Library/Application Scripts/me.daneden.Zeitgeist",
    "~/Library/Containers/me.daneden.Zeitgeist",
  ]
end
