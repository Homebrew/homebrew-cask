cask "tbe" do
  version "0.9.3.1"
  sha256 "6483144ab4a5e9f963a2b417bb6fc796ac08b58f25e1e660453c54cc3ed1698b"

  url "https://github.com/the-butterfly-effect/tbe/releases/download/v#{version}/the-butterfly-effect.org-c98676323e380704a1f9b41a8337bc362b88f779-OSX.zip",
      verified: "github.com/the-butterfly-effect/tbe/"
  name "The Butterfly Effect"
  homepage "http://the-butterfly-effect.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "tbe.app"

  zap trash: "~/Library/Preferences/org.the-butterfly-effect.The Butterfly Effect.plist"
end
