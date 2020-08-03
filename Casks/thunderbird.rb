cask "thunderbird" do
  version "78.1.0"

  language "cs" do
    sha256 "75c914c6ae52c7631f77d41d8eab6134ad22b1a026017e1a4ec09d727c0d534b"
    "cs"
  end

  language "de" do
    sha256 "a5a5fe5d4d66a4d401f9d4b5f73ce8afff28728199a8c90e3b15f41de273b267"
    "de"
  end

  language "en-GB" do
    sha256 "bf5a77c277991cd2d8a14e616979337bf21d71e760e62439ea29abe815fdcf18"
    "en-GB"
  end

  language "en", default: true do
    sha256 "3854961cf4705d2b3771cee13482e7abd7f708f4d239a5defa2e4624dc0ee98b"
    "en-US"
  end

  language "fr" do
    sha256 "c3872320707c887a2714e130e2bfedaff91aa6eada81badeb9ee327a4d347f82"
    "fr"
  end

  language "gl" do
    sha256 "b5cbe6eff4aef01e5d1a7b380cfbb4e7b54bdb2865a7d48f965ab2b28932a429"
    "gl"
  end

  language "it" do
    sha256 "807a94c9036942213e3059ba883c449a548e13f65fbe16c06a0cd78e12b329d6"
    "it"
  end

  language "ja" do
    sha256 "65ec16c89c91a55dfa499104f0545ccfdf5b2d322761dbca609d2032942fac32"
    "ja-JP-mac"
  end

  language "nl" do
    sha256 "9f90ad0e19d15473aa549b3e170fae5096c0272bac53c8390cd106fa4dc39935"
    "nl"
  end

  language "pl" do
    sha256 "7bf00d97258e19f43b4022736d30cc6f1e531f8d41dd145bfb29a4ffe56e34c0"
    "pl"
  end

  language "pt" do
    sha256 "56e42bec00df290cb16de62611b45e45e45911df9c0adb0c3bcde867fa2f5c94"
    "pt-PT"
  end

  language "pt-BR" do
    sha256 "ab80aff615dbb51aa8d49a2bdc86e2312e63218fdb6b6965b9d974f34cf611cc"
    "pt-BR"
  end

  language "ru" do
    sha256 "2d235c64e154cf0f08783fe77f6b1fccc0af995e7da4d40181aedea4fbc1e268"
    "ru"
  end

  language "uk" do
    sha256 "c7e7e4f9262e501980b788d0e49ba2b761a45a84912a272372de92179497a44e"
    "uk"
  end

  language "zh-TW" do
    sha256 "862c8e8a04b02fd4669ea5c72daba1f7d8056a915dd74505b0882249db49bc2e"
    "zh-TW"
  end

  language "zh" do
    sha256 "a513ba33b2b2bb81c8894c024beb7992bb8e76c5f16b1f6cef73f4c5bb2254a9"
    "zh-CN"
  end

  # ftp.mozilla.org was verified as official when first introduced to the cask
  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://www.thunderbird.net/en-US/thunderbird/releases/"
  name "Mozilla Thunderbird"
  homepage "https://www.thunderbird.net/"

  auto_updates true
  conflicts_with cask: "thunderbird-beta"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Thunderbird",
    "~/Library/Caches/Thunderbird",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
  ]
end
