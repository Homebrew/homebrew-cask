cask "tagspaces" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.0.4"

  if Hardware::CPU.intel?
    sha256 "de7a1e1fd37115d680424ffdd60e14edd7c309a105d351410e284658af303660"
  else
    sha256 "5c467d1755e0f7d1589abb83921bf46f3b4749ba8ab0687065d4860254bfa38f"
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
