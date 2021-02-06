cask "vofa-plus" do
  version "1.3.8"
  sha256 "73c590cbe3c69a41464b0739abe5a1064b7ffe3bc7194f774a114cd0fbc07bab"

  url "https://gutega.gitee.io/vofa_plus_res/downloads/vofa+_#{version}_amd64.dmg",
      verified: "gutega.gitee.io/"
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
