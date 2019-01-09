cask 'thunderbird' do
  version '60.4.0'

  language 'cs' do
    sha256 'ad47a68f6b87c3050f0775a935d18113fb617f2c4b15af34fbfa28828dea921a'
    'cs'
  end

  language 'de' do
    sha256 '531bd1c72efc2709de8888820e0d0dc9b082902d552120b6bd8053912fc6af6a'
    'de'
  end

  language 'en-GB' do
    sha256 '9a95e224b4c466880c3849463e70636dcb68fb8f1e4e479d8db522dcb2fe20a8'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'c2ffea40c0b571cc7c0eb1d6021a81678681713e5b6f50a70bb13a5f01f5cd6c'
    'en-US'
  end

  language 'fr' do
    sha256 '05572efd7e5db144c472629289f6f51540d48e8be06df37fbe85a1e39cefc473'
    'fr'
  end

  language 'gl' do
    sha256 '634b417c58a49fe23f36b20061b7a712dcf11408271a018ea7e86a1ce9a6377b'
    'gl'
  end

  language 'it' do
    sha256 'aa0466935df853b5b7fba8eba2f46dc8a848e7cd72c0e65a96942c8aa124ed33'
    'it'
  end

  language 'ja' do
    sha256 '546e4c1ca6e6c345dd3721102c21c83f7c6e43d1d631df3cadb17d96c3f1e63c'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '978a2c4d0a90af9eca732dc51b80f0c4fe34726006914388661d0636bda5d4ee'
    'nl'
  end

  language 'pl' do
    sha256 'afe8f0b88fa356421a2d39bfa0c6eaae61a734fb6373012620d457add5d8a97c'
    'pl'
  end

  language 'pt' do
    sha256 '000d025fa8d5a9aef7e5fe9dc164f2206942d193901f02787dde5afa208baa02'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'aac9d7ed2065ddcfb6380d3899a9b933c3532b374cd34011bb68f14cd3c7b5fa'
    'pt-BR'
  end

  language 'ru' do
    sha256 '570e6f1ba8284a75b4b4f3d438ba46a3bec4f722fbc134e00d5a08dacabd7aab'
    'ru'
  end

  language 'uk' do
    sha256 '580406eeef8b979727f11fece6957352a2fea5f87ebcce616822e134291e9b18'
    'uk'
  end

  language 'zh-TW' do
    sha256 '520d9de6efa63552099f3b868ad3426e6255ec1eab9af03d29ffdaf6b8e009e1'
    'zh-TW'
  end

  language 'zh' do
    sha256 '3e20804517e03ee445c435447b9bf43a945e510626fcef9e4fdeaf4547adb2f7'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast 'https://www.thunderbird.net/en-US/thunderbird/releases/'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true
  conflicts_with cask: 'thunderbird-beta'

  app 'Thunderbird.app'

  zap trash: [
               '~/Library/Thunderbird',
               '~/Library/Caches/Thunderbird',
               '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*',
               '~/Library/Preferences/org.mozilla.thunderbird.plist',
             ]
end
