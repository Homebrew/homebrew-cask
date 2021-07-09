cask "trailer" do
  version "1.7.5"
  sha256 "ec9b507622d050f9406f0e1319c3fef4cab242e754364ef1fdba0554132b4be6"

  url "https://github.com/ptsochantaris/trailer/releases/download/#{version}/Trailer-#{version.no_dots}.zip",
      verified: "github.com/ptsochantaris/trailer/"
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
