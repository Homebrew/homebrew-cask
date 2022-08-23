cask "thunderbird" do
  version "102.2.0"

  language "cs" do
    sha256 "4b68a34bb372bc33683e577f5160077da19e3e4bc76edb87452cd1533a3fa531"
    "cs"
  end
  language "de" do
    sha256 "172b6f40c43af3149724eaf1d5dc3c7af13372adb2539a9478548f9b03ba008d"
    "de"
  end
  language "en-GB" do
    sha256 "4707ac6ce0652c3a3c6a0ac9caf70e1da6cccb11e55efbbc9f5330ebf1d988be"
    "en-GB"
  end
  language "en", default: true do
    sha256 "11862b2f9884810cc89d936d2afebc51c8273fe997867d5a795f93ce400cfb88"
    "en-US"
  end
  language "fr" do
    sha256 "466ce91b3b423dd5bba8ec91586d91296d6c2588be89c119a6a5aaf82a75b5f1"
    "fr"
  end
  language "gl" do
    sha256 "2b76aebbd6212e85b0f1080688e8b8547fc3049320a0fac66e818d5c1706fa75"
    "gl"
  end
  language "it" do
    sha256 "e71a12abb55d86bcf54d3d34ba62d9d3cdc3c555a49e9c3c91251c9fcdf08da2"
    "it"
  end
  language "ja" do
    sha256 "7555a6025740b196e28bc91c885aecc8fdf09b918da61988a0748cdc72cd6064"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "53fa822b722beb863a270944de4987c1124e95720917f32628cede2518390e13"
    "nl"
  end
  language "pl" do
    sha256 "1dd2726649e817580e6d80339a9d19ebf107cd2362d70fe1e5e2144dc270297f"
    "pl"
  end
  language "pt" do
    sha256 "8140e1ab32b556a611b7c27c43388932d60c61384124df2a0107915875403982"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "39c50bfa7d4ac8ce89bf8ea50e6318edbe829e819f90c1218157f32ebde64fd2"
    "pt-BR"
  end
  language "ru" do
    sha256 "74f2d235f5bd8c03d2481a4c5933ba95764917a2468bf22108b1fc0962986f55"
    "ru"
  end
  language "uk" do
    sha256 "042db12baed76d508f63032313805e7c486a994f1e21daedd8fb85c2363bf59e"
    "uk"
  end
  language "zh-TW" do
    sha256 "fd1f433c067fe4e04f9a557c193731ec23373620576905382499f0a92e371a39"
    "zh-TW"
  end
  language "zh" do
    sha256 "40c1ab4ba09bf487b80261688d92f31d4aed0ea7b3bffc67bd562de28ebf7896"
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
