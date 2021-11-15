cask "thunderbird" do
  version "91.3.1"

  language "cs" do
    sha256 "8e94ce315cf8b3e83a46f9487c34676176dd5bd5921a10acd7d15ab4ec4d0e5c"
    "cs"
  end
  language "de" do
    sha256 "a40ce17f365c48fe6c0c12dc38c190dbe26279917c197401dbac6e1c4f40c434"
    "de"
  end
  language "en-GB" do
    sha256 "f6722233093b4109c7ee0918734d4f1496c8e4f9f5538b4a58db2f5fcd3a0aaf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a549261d8544414f0cf2ad9a0afc49a9dd1d8a8e6e80032a94bd6e4455d78e42"
    "en-US"
  end
  language "fr" do
    sha256 "37cfe52ccea53a56d4856c8def07813c5a2e00297c98dac568b5a5c4fc3d4b91"
    "fr"
  end
  language "gl" do
    sha256 "abbcb9f4b374a700e48e3dca82ed5340e576116af8b3591f65ea5c59d8619e00"
    "gl"
  end
  language "it" do
    sha256 "d8f3431f5e1c41a491f8e255a65adce8fbd9a4872755df3136eb0367c616977f"
    "it"
  end
  language "ja" do
    sha256 "cb9eea711423b303bcd67bffcf687850f29ebc62cf743d3a91ad5fb3d184628b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fc3cd36e94fb6e0ecace3310963a922f2033d462f88b31bde71d23911c261839"
    "nl"
  end
  language "pl" do
    sha256 "564cf94a7ef17f41559288bb7d86e0de414520aeafa475961237137ad8efa649"
    "pl"
  end
  language "pt" do
    sha256 "1983acc78ff642ff15aa86e41af43c8a6133dc7fc141f7e993505e4d4892ed8f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b9c5058196fb19694afe90806871761ddc2093b001ddd52b3297e81629c8d8aa"
    "pt-BR"
  end
  language "ru" do
    sha256 "bf9e94e63acf8fb6860dda55bf898af2c07936d07c0427a08c914674b872cfc9"
    "ru"
  end
  language "uk" do
    sha256 "7008b889c54811791b91e3b335f982ad8c7eaf4ec146ed5306e7705e42b9047c"
    "uk"
  end
  language "zh-TW" do
    sha256 "86a431bfd7e49e605cf29a3a8687b655ffb96d05a88646371bbfb87d3ef51d46"
    "zh-TW"
  end
  language "zh" do
    sha256 "51384b86213c5d8bb5b52ca3fa627b5f3b62d22e20a48840d26ca11a46bbd212"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "ftp.mozilla.org/pub/thunderbird/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  livecheck do
    url "https://download.mozilla.org/?product=thunderbird-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/thunderbird-beta"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
