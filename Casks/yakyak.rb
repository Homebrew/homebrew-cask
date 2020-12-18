cask "yakyak" do
  version "1.5.11"

  if Hardware::CPU.intel?
    url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx-x64.zip"
    sha256 "c5b8c079d7ba076dc5c03cd00c8950cb5f7ce6400b33dc3ef58d271c0700502b"
  elsif Hardware::CPU.arm?
    url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx-arm64.zip"
    sha256 "8bf88599c2a8fa57fb103265a509269f51a498cc71867dcfa041d652a2e12d32"
  end

  appcast "https://github.com/yakyak/yakyak/releases.atom"
  name "Yakyak"
  desc "Desktop chat client for Google Hangouts"
  homepage "https://github.com/yakyak/yakyak"

  app "YakYak-darwin-x64/YakYak.app"
end
