cask "tagspaces" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.1.3"

  if Hardware::CPU.intel?
    sha256 "d8e92d38e87579872da39b3efb9ee7ac628aff0a197b2e846670fb95999f57a3"
  else
    sha256 "4898e09afc43a796f47fa443362a10a41bf7528e7d23ce0f49b8e3e2114148c4"
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
