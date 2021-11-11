cask "tagspaces" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.0.6"

  if Hardware::CPU.intel?
    sha256 "836cba027c72bc8fa9e5a2fd661d28bb3ff76ada1e90bda630049d605a0842e3"
  else
    sha256 "61666f22ceff186a9aa7ba9365ca259ee4d336c14c658f8e89c49a82c40c5df0"
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
