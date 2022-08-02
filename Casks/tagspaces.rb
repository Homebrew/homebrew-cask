cask "tagspaces" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.4.3"

  if Hardware::CPU.intel?
    sha256 "f40a73828459b5dd5cd31063bd0cfdfeef4736e2a6594951ca1658060bd6965d"
  else
    sha256 "62faf39ce08575421d3a9d67763399c2ee4a1bca09ebae3401b747fa0867e8dd"
  end

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{arch}-#{version}.dmg",
      verified: "github.com/tagspaces/tagspaces/"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TagSpaces.app"
end
