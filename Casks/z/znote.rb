cask "znote" do
  version "2.3.11"

  on_arm do
    sha256 "10413386d5b2e5f46ca7a1bb93a6e41d31be9a0b891f6024d1e5467dad621cf9"

    url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}-arm64.dmg",
        verified: "github.com/alagrede/znote-app/"
  end
  on_intel do
    sha256 "34a92ed5fd66fcc53789681be80b5586356daaca053d96dc615b91067607fe1d"

    url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}.dmg",
        verified: "github.com/alagrede/znote-app/"
  end

  name "znote"
  desc "Turn your notes into micro apps"
  homepage "https://znote.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
