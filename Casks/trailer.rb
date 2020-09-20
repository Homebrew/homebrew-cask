cask "trailer" do
  version "1.7.1"
  sha256 "74139d6ccde6368d5d549bbb7517f796eb3913192a4117a60a3209225ba4a84f"

  # github.com/ptsochantaris/trailer/ was verified as official when first introduced to the cask
  url "https://github.com/ptsochantaris/trailer/releases/download/#{version}/Trailer-#{version.no_dots}.zip"
  appcast "https://github.com/ptsochantaris/trailer/releases.atom"
  name "Trailer"
  desc "Managing Pull Requests and Issues For GitHub & GitHub Enterprise"
  homepage "https://ptsochantaris.github.io/trailer/"

  app "Trailer.app"

  uninstall quit: "com.housetrip.Trailer"

  zap trash: [
    "~/Library/Application Support/com.housetrip.Trailer",
    "~/Library/Caches/com.housetrip.Trailer",
    "~/Library/Group Containers/group.Trailer",
    "~/Library/Preferences/com.housetrip.Trailer.plist",
  ]
end
