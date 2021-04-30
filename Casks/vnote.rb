cask "vnote" do
  version "2.10"
  sha256 "9adc4d003bcfea3d3386a952b09ab5012fb6a4d22dc2ec1e313b6c3350f26059"

  url "https://github.com/vnotex/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg",
      verified: "github.com/vnotex/vnote/"
  name "VNote"
  desc "Note-taking application that knows programmers and Markdown better"
  homepage "https://vnotex.github.io/vnote/"

  # We need to check all releases since the current latest release is a beta version.
  livecheck do
    url "https://github.com/vnotex/vnote/releases"
    strategy :page_match
    regex(%r{href=.*?/VNote-(?:mac-x64)?v?(\d+(?:\.\d+)*)(?:-x64)?\.(?:dmg|zip)}i)
  end

  app "VNote.app"
end
