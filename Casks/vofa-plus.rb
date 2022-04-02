cask "vofa-plus" do
  version "1.3.10"
  sha256 "376575ccfa82866c3fdaa989d1d0d19a927797789d246ccdba737f4e3fec4d7d"

  url "https://je00.github.io/downloads/vofa+_#{version}_amd64.dmg",
      verified: "je00.github.io/"
  name "VOFA+"
  desc "Serial port console that is driven by the plugin"
  homepage "https://www.vofa.plus/"

  livecheck do
    url "https://www.vofa.plus/downloads/"
    regex(/vofa\+_(\d+(?:\.\d+)*)_amd64\.dmg/i)
  end

  app "vofa+.app"

  zap trash: "~/Library/Preferences/vofa+/"
end
