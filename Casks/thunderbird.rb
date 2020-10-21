cask "thunderbird" do
  version "78.3.3"

  language "cs" do
    sha256 "1de9a5778f0c58180ea01371a692b73ad5fb648bc7f9ad36306f0c648d91d3a7"
    "cs"
  end
  language "de" do
    sha256 "01467f5816de81e5594af43d2dec4348e3b735e432292a4bcb55de5fe4c36862"
    "de"
  end
  language "en-GB" do
    sha256 "20fbfc69abec80f921047b6a47f3372f0195576170b5655a346895f2a85911a6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "97ddf48d933d471ec0850c71abf90a139359c9023f502bceb217758f45e5abfa"
    "en-US"
  end
  language "fr" do
    sha256 "9558080395db0e6aa5148667ebca56cf4a6579fc4007d932bd18e5cde8794ad3"
    "fr"
  end
  language "gl" do
    sha256 "c156d813ebb2f3f395676f5aa824029e3fac843600ec476edd6314eed884e537"
    "gl"
  end
  language "it" do
    sha256 "f10e87512340b47e783b6ba75ca2f0af48ef881f4dadfdfbe19fa8d5fa2906c4"
    "it"
  end
  language "ja" do
    sha256 "0326a4c9edaba1c6fa9fe299f520895a99c386147716e103e99f41340ec76c76"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "722357a2fcd5b4515493bf6ae3bc39486c70eb3ab5bb8864cb5848eac512ed1d"
    "nl"
  end
  language "pl" do
    sha256 "b4f21f0251ba2ab444a89fb9e87087cb9993569d7e6422e54cd503d632f329ef"
    "pl"
  end
  language "pt" do
    sha256 "830f7f20f909e7666c4d20f9f9f14a081eafb731ff1740837d7fab29c63a14f5"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5d48cbae562fc68026c45a03dbe4163a4812cfcacf2bec3f27fb5202d8360ff8"
    "pt-BR"
  end
  language "ru" do
    sha256 "17d6187db4af95b610585babba6d56813ce43dea040e1999b25ef67dba2efbe5"
    "ru"
  end
  language "uk" do
    sha256 "01fd10ab73bb6f80eab223d24b157548c22697325df5e25d7cddcda2a4259599"
    "uk"
  end
  language "zh-TW" do
    sha256 "1735a4312a7bce27f6623957d747cd81d74536a9deb99eb9bafe17589c269a22"
    "zh-TW"
  end
  language "zh" do
    sha256 "6d7b7fd43255f95348d566c977d7a8b97bbc253c1d9c65739f156bc3f173210c"
    "zh-CN"
  end

  # ftp.mozilla.org was verified as official when first introduced to the cask
  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://www.thunderbird.net/en-US/thunderbird/releases/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/thunderbird-beta"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Thunderbird",
    "~/Library/Caches/Thunderbird",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
  ]
end
