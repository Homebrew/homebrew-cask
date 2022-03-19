cask "winds" do
  version "3.2.0"
  sha256 "a7ce55d4082b043771683eb69a7c1f8c7b635e6f4fbc190bf8200fc733ed1576"

  url "https://s3.amazonaws.com/winds-2.0-releases/releases/Winds-#{version}.dmg",
      verified: "s3.amazonaws.com/"
  name "Winds"
  desc "Open-source RSS & podcast app powered by Getstream.io"
  homepage "https://getstream.io/winds/"

  livecheck do
    url "https://s3.amazonaws.com/winds-2.0-releases/latest.html"
    regex(%r{href=.*?/Winds-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Winds.app"

  zap trash: [
    "~/Library/Application Support/Winds",
    "~/Library/Logs/Winds",
    "~/Library/Preferences/io.getstream.winds.plist",
    "~/Library/Saved Application State/io.getstream.winds.savedState",
  ]
end
