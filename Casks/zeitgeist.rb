cask "zeitgeist" do
  version "2.3"
  sha256 "437794ff91f9c8810580d1f07965b4100c28ef5fb162195bf8e87b5db7fd8308"

  url "https://github.com/daneden/zeitgeist/releases/download/v#{version}/Zeitgeist.app.zip",
      verified: "github.com/daneden/zeitgeist/"
  name "Zeitgeist"
  desc "Keep an eye on your Vercel deployments"
  homepage "https://zeitgeist.daneden.me/"

  depends_on macos: ">= :big_sur"

  app "Zeitgeist.app"

  uninstall quit: "me.daneden.Zeitgeist"

  zap trash: [
    "~/Library/Application Scripts/group.me.daneden.Zeitgeist.shared",
    "~/Library/Application Scripts/me.daneden.Zeitgeist",
    "~/Library/Containers/me.daneden.Zeitgeist",
    "~/Library/Group Containers/group.me.daneden.Zeitgeist.shared",
  ]
end
