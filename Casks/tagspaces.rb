cask "tagspaces" do
  version "3.10.4"
  sha256 "9a7c6bfe00b0fd51a13353d93f9444fe14840e532a6c5a3445c2c6c4be663c11"

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip",
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
