cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.11.0"
  sha256 arm:   "7f6807155a072dba6a8d44670120d26fb60b90644d7d38b1e3cee3e0dff9a150",
         intel: "eaac15711d17979ba7ac7da07fc5a558636a113fad2ff894be0aab6a19040dc7"

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
