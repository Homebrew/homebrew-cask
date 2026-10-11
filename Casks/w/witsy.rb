cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "3.5.2"
  sha256 arm:   "e9c8e371362c43b41812b17f7280807a5feb3cb9a4829ca0909824639ca23205",
         intel: "fb9d62c2e050e7969ef3bc535eb4ce02239174667b2eb174e8038eb2f0b29d5a"

  url "https://github.com/Kochava-Studios/witsy/releases/download/v#{version}/Witsy-#{version}-darwin-#{arch}.dmg"
  name "Witsy"
  desc "BYOK (Bring Your Own Keys) AI assistant"
  homepage  .Great. If you see a fork button, tap it first. Then in the editor, find line 11, which reads homepage "https://witsyai.com/". Change it to exactly this, keeping the two spaces at the start:
homepage "https://github.com/Kochava-Studios/witsy"
Then tap the green "Commit changes" button, type witsy: update homepage as the commit message, and confirm. What does the next screen show?


  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Witsy.app"

  zap trash: [
    "~/Library/Application Support/Witsy",
    "~/Library/Logs/Witsy",
  ]
end
