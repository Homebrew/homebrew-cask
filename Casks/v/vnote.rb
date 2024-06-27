cask "vnote" do
  version "3.17.0"
  sha256 "7adeaf277dba716a8b6eb300b803d55e84a5e93ba34dcf6497b2680b1834bef2"

  url "https://github.com/vnotex/vnote/releases/download/v#{version}/vnote-mac-x64-qt5.15.2_v#{version}.zip",
      verified: "github.com/vnotex/vnote/"
  name "VNote"
  desc "Note-taking platform"
  homepage "https://vnotex.github.io/vnote/"

  app "VNote.app"

  zap trash: [
    "~/Library/Application Support/VNote",
    "~/Library/Preferences/com.vnotex.vnote.plist",
    "~/Library/Preferences/VNote",
  ]

  caveats do
    requires_rosetta
  end
end
