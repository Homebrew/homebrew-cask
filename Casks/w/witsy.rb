cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.14.0"
  sha256 arm:   "5ce69b66025ea7464f6a16963eca1e65dbfe10b289030f66270da355e217d885",
         intel: "24555774cac710e80f2a7a7b8b9afc58721d1d5d8307a3bbc90a2eab3a267f54"

  url "https://github.com/nbonamy/witsy/releases/download/v#{version}/Witsy-#{version}-darwin-#{arch}.dmg",
      verified: "github.com/nbonamy/witsy/"
  name "Witsy"
  desc "BYOK (Bring Your Own Keys) AI assistant"
  homepage "https://witsyai.com/"

  livecheck do
    url "https://update.electronjs.org/nbonamy/witsy/darwin-#{arch}/0.0.0"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Witsy.app"

  zap trash: [
    "~/Library/Application Support/Witsy",
    "~/Library/Logs/Witsy",
  ]
end
