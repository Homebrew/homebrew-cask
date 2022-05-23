cask "tagspaces" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.3.1"

  if Hardware::CPU.intel?
    sha256 "2735d612a4128312774ec1280702942b970a7b4691facea5c7aa24a8685a715a"
  else
    sha256 "fd07e32ae72aa5a628566b99d47d6ff17aac65ac10b9f269a69cc7f9fa33bd9c"
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
