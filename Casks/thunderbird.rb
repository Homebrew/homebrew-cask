cask "thunderbird" do
  version "102.9.1"

  language "cs" do
    sha256 "8a4bdd622940725d112531859e183b4415953aa8d12c023af404d15d2f9c4539"
    "cs"
  end
  language "de" do
    sha256 "5bd1c4d8bc2aa009d330be791c38b3f100b3d2951acb44d1d25a949e1bfa0d52"
    "de"
  end
  language "en-GB" do
    sha256 "69379893c5d9d492e3960ba48316509585bdbe37e76bcf5c48886f0db60fde88"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e6bafe0c060a47e9cfc1cfda541d7918fefb4df06eca94754fcb812cf25d1f75"
    "en-US"
  end
  language "fr" do
    sha256 "6a80cbaf155ce7746b092c1d4b0ecf12a5462e36b2aa6f4f99e5bad5661d7e72"
    "fr"
  end
  language "gl" do
    sha256 "3b1ed0ad43a891acc354202d83b0d6423214b158c02a64a5575e83cac9d39f43"
    "gl"
  end
  language "it" do
    sha256 "581d222e8ba0a38ebbbe22f9169f94f167f3be671add3a73bf27b1666ec96ea2"
    "it"
  end
  language "ja" do
    sha256 "033a71d7533c8a454b28e3d1a18dedbb1a7b4a6a31ed7b3073bec544a17ccf1d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "652b681ff6e623687657fc7d67407a3eb625e3f352d11fbd77a1560562d9054f"
    "nl"
  end
  language "pl" do
    sha256 "399855b63cc92cd25677a074bfeed03005249c5d5d5b3b3444e66816818a02ef"
    "pl"
  end
  language "pt" do
    sha256 "c7617836a78fa20c9e32f03aff7e06e402f979c0ee0744014ccbdd04427365b4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d04dbe64cd0e413888b28cd1c1e4999ab6c9d2d8c29b56d34593460847848b67"
    "pt-BR"
  end
  language "ru" do
    sha256 "fb1462a34478254d2989b6542bdc10998bc1cbfbc09b81796e3cb39aa63c74c5"
    "ru"
  end
  language "uk" do
    sha256 "60efa49383932f5f218342716c575448c75fbd14cf530daecbc42a51237c3409"
    "uk"
  end
  language "zh-TW" do
    sha256 "64d5dfb91edb1f9716fa6bc8767ea5759a30107c99cac781584ce153fcbc8efd"
    "zh-TW"
  end
  language "zh" do
    sha256 "80625795c0537c8124599810a781ac5df11e4a1ccc4f61e50ef15df56a2a4f5a"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  livecheck do
    url "https://download.mozilla.org/?product=thunderbird-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/thunderbird-beta"
  depends_on macos: ">= :sierra"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
