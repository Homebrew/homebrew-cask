cask "zazu" do
  version "0.6.0"
  sha256 "a726bd20d64d6f03b3251d7841f94fae0f50103533706e9291233aa3adbecf92"

  # github.com/ was verified as official when first introduced to the cask
  url "https://github.com/tinytacoteam/zazu/releases/download/v#{version}/Zazu-#{version}.dmg"
  appcast "https://github.com/tinytacoteam/zazu/releases.atom"
  name "Zazu"
  desc "Extensible and open-source launcher for hackers, creators and dabblers"
  homepage "https://zazuapp.org/"

  app "Zazu.app"

  zap trash: [
    "~/Library/Application Support/Zazu",
    "~/Library/Caches/Zazu",
    "~/Library/Preferences/com.tinytacoteam.zazu.helper.plist",
    "~/Library/Preferences/com.tinytacoteam.zazu.plist",
  ]
end
