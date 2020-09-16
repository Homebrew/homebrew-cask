cask "vnote" do
  version "2.10"
  sha256 "9adc4d003bcfea3d3386a952b09ab5012fb6a4d22dc2ec1e313b6c3350f26059"

  # github.com/tamlok/vnote/ was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast "https://github.com/tamlok/vnote/releases.atom"
  name "VNote"
  desc "Note-taking application that knows programmers and Markdown better"
  homepage "https://tamlok.github.io/vnote/"

  app "VNote.app"
end
