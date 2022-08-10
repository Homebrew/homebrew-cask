cask "vnote" do
  version "3.14.0"
  sha256 "23c1865b38939e92006510a3d1d83d0cb7dc80878389a842a529a99755df3afd"

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
