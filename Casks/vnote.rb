cask "vnote" do
  version "3.13.0"
  sha256 "0b30575e3e71bd920836af3d4a5a0de61fbf55cc3a157af0e7cacdc987288d9f"

  url "https://github.com/vnotex/vnote/releases/download/v#{version}/vnote-mac-x64_v#{version}.zip",
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
end
