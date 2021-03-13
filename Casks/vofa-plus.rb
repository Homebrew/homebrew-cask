cask "vofa-plus" do
  version "1.3.9"
  sha256 "e1e94e63abf346f6857fb5bd6dabc756666ea7ec57cf74bcb808046a3727dca2"

  url "https://je00.github.io/downloads/vofa+_#{version}_amd64.dmg",
      verified: "je00.github.io/"
  name "VOFA+"
  desc "Serial port console that is driven by the plugin"
  homepage "https://www.vofa.plus/"

  livecheck do
    url "https://www.vofa.plus/downloads/"
    strategy :page_match
    regex(/vofa\+_(\d+(?:\.\d+)*)_amd64\.dmg/i)
  end

  app "vofa+.app"

  zap trash: "~/Library/Preferences/vofa+/"
end
