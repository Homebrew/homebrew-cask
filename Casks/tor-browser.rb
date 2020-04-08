cask 'tor-browser' do
  version '9.0.8'

  language 'ar' do
    sha256 '79602dca902b31774a5df5aad9ddf45b92f688c8fa3f20fe1790b4dc40ddf663'
    'ar'
  end

  language 'ca' do
    sha256 'e3437b993433386732ba05ab999ea8f00b564c3130eb621c037e090f8dcafe2d'
    'ca'
  end

  language 'cs' do
    sha256 'c0477ea659388f9168d1211d2757591951bea5fdf69de677738c214021a48443'
    'cs'
  end

  language 'da' do
    sha256 '6166ee5e2bf3a3256e114fbae727acdb454b234f7e50e1a73c73aa72d1bb3ff6'
    'da'
  end

  language 'de' do
    sha256 'd2e5f5e99d4328fc24fe13dd53e414b50d11f800e43badd44d98a64979f442f1'
    'de'
  end

  language 'el' do
    sha256 '175544ac547ba3754543470fa32c16bdaa45a050dcfed973f93dfb42800a8b94'
    'el'
  end

  language 'en', default: true do
    sha256 'be81933dc5b90db32faca9da8bd356bc49f1ba87f8b132bd7fa9d148d26bcce1'
    'en-US'
  end

  language 'es-ar' do
    sha256 'c0a7261df62c53f4fa9cea07b5b38e4171735eac5f15063254db9a9df9c0100a'
    'es-AR'
  end

  language 'es-es' do
    sha256 '6f0ac3cb4868c249a149042891e5764ea8acebf5d9e5b2cd9db7bb258862b9e7'
    'es-ES'
  end

  language 'fa' do
    sha256 '22eab0086e58e3e3b6c3f3326c1b69a48331e635a5321c48ed652f0cee9c033e'
    'fa'
  end

  language 'fr' do
    sha256 'e27bab470552e1f0ca5616e1949f3fdd1f0e804183395014acccb39463a56547'
    'fr'
  end

  language 'ga' do
    sha256 '54e8dccc4e3d2db621d33bd4947044b56dac015953b47b5a60aecd695fa02fb6'
    'ga-IE'
  end

  language 'he' do
    sha256 'aba69220b9ebcfad4c3bc01c63d0d3b5d1f015d0c97e0afa4d64061b2ea87649'
    'he'
  end

  language 'hu' do
    sha256 'b640b5c2af02281e88b5c8c5595ab3e5519474002b5a54509e670935d1646d29'
    'hu'
  end

  language 'id' do
    sha256 '2b7af9ae99b05d9e2eb20a1a7bc50c9251e0653e632cce3b7a0e261051c83aae'
    'id'
  end

  language 'is' do
    sha256 '8c89c89b50f56e70ab10afce3b70d7cf0fb6c49a365d39e503deb289a5a0c8fb'
    'is'
  end

  language 'it' do
    sha256 'a064863a0fa4adb36078332a327435ce0add3c05c248f0bc0903bbd8dcca71f0'
    'it'
  end

  language 'ja' do
    sha256 '5b6665ca915953a0d68837585d859ad120cc7f18264e61fa2de5f595e30b2c06'
    'ja'
  end

  language 'ka' do
    sha256 'c1351823bfd8693d81d0c430a320a9b98ab723b491dd45d9ccc5c1d3f9ed0817'
    'ka'
  end

  language 'ko' do
    sha256 '0535f226c96bdd18e4fa29f996814511b5f535bb3dd3196a0e0a3bc6a86b39c8'
    'ko'
  end

  language 'mk' do
    sha256 'f283c79d0ae0c6b0fd36b48fc128b6d606de22eed11a5632d70439d3521e1a6b'
    'mk'
  end

  language 'nb' do
    sha256 '3b71ff7c1efcc66cac856e81076c7397cc7b7701ebf93bda2a6ed52e61f28ee0'
    'nb-NO'
  end

  language 'nl' do
    sha256 '5f02b52fde85fdf65802ba665802d6dca52b29808d01df79a03c2ff5bffd57a3'
    'nl'
  end

  language 'pl' do
    sha256 '5c708b4a6a9c5940fbbed3adaa00bd61916a267b600b5130ff757e64820c32fc'
    'pl'
  end

  language 'pt' do
    sha256 '23a874b38c9a266ea4cb5567e1e879db4305aac5cdfa02435d5f31672b71a0f9'
    'pt-BR'
  end

  language 'ro' do
    sha256 'b14f64be5306357f9d2e4965909a7d268f408f91f66dd897a5872ff11e8b0071'
    'ro'
  end

  language 'ru' do
    sha256 '926b68b1dbfd5aa7a8fb750506d27889a10fead4d1ff0c0b8fdb9cc745950779'
    'ru'
  end

  language 'sv' do
    sha256 '3b6563df29218336351e5c3d7dae8be29aec3dda95f5a363fae8d5ebac0b93fc'
    'sv-SE'
  end

  language 'tr' do
    sha256 'e2424eef4df8707909a24ad9068b51fc256cc9cf2e8098569cedb1b532ef3463'
    'tr'
  end

  language 'vi' do
    sha256 '8f26848fe431f632ea31351270953eef27a4edca8584ddd5dea9217d4a8b1a38'
    'vi'
  end

  language 'zh-cn' do
    sha256 '348d0ed1d19bbbb633a0aab0aae471e62545d68031f653e3b00c074b8d556369'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '852079cfd1296ed3bf5c6d73a8d9f8580bcc91440626e87e0bdbb4fcd5a4bab0'
    'zh-TW'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://www.torproject.org/download/'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/'

  auto_updates true
  conflicts_with cask: 'tor-browser-alpha'

  app 'Tor Browser.app'

  zap trash: [
               '~/Library/Application Support/TorBrowser-Data',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*',
               '~/Library/Preferences/org.mozilla.tor browser.plist',
               '~/Library/Preferences/org.torproject.torbrowser.plist',
               '~/Library/SavedApplicationState/org.torproject.torbrowser.savedState',
             ]
end
