cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.3.1"
  sha256 arm:   "08d8613fb66b65fd2bc73cfe2bc9a78ae0adce2bb417719088844f6f38573ab8",
         intel: "7687cada22d7601fa751e1784e735500d5f224f4bf84818f9c8e346e3d7222d6"

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
  depends_on macos: ">= :monterey"

  app "Witsy.app"

  zap trash: [
    "~/Library/Application Support/Witsy",
    "~/Library/Logs/Witsy",
  ]
end
