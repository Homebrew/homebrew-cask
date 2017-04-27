cask 'torbrowser' do
  version '6.5.2'

  language 'ar' do
    sha256 '7e1937454822a15f6e5db6a9ced1fee18885650c248b9245ae65936be138b5aa'
    'ar'
  end

  language 'de' do
    sha256 '474fd4da118981ffd89281b5d8b5c0b8d38c6e26abc053976904c0eaaf2f54f0'
    'de'
  end

  language 'en', default: true do
    sha256 '0b11d12f9ff0d82ceb2a9a4dba9c4ba234da47640c8e25e76e4092a7d3a90ef6'
    'en-US'
  end

  language 'es' do
    sha256 'fb46061d9ae6744c93700b37303422fa3f9cc2c2b83b57a0c2e1f440aad3d9b8'
    'es-ES'
  end

  language 'fa' do
    sha256 'c3fc7ec7e5a01644f5416c23fd3ea6655546142026b8ad51fd32a8d6f9ed7436'
    'fa'
  end

  language 'fr' do
    sha256 '290d244ba9a4aafe6ba6a83bcb7286ca7f9141b4bc643d37c6e0bf8944e0c1d5'
    'fr'
  end

  language 'it' do
    sha256 'a57d3eb05dae83d1566848b48e0bf11dc4ddd4aadf879ed3d6e5d30f325535ae'
    'it'
  end

  language 'ja' do
    sha256 '40926fdcbc2de60394ce1e0ee74b283ff3557120213e10790b62f312a5e0934d'
    'ja'
  end

  language 'ko' do
    sha256 'e770e9d28fea7eff27c067310bc5d7a68daba5bba5f7afa063ad23f0255d019d'
    'ko'
  end

  language 'nl' do
    sha256 '0addfd959a7f257046ad740b3e231c6f426dce1f49262e7e5a61a5dfa97e2d42'
    'nl'
  end

  language 'pl' do
    sha256 'f538e74c183d95279f98e68906c95a96bd401d5d27190c5a2db064125beda2f6'
    'pl'
  end

  language 'pt' do
    sha256 '8c0cc406c2d7f7b6c13fe5cdcf6a162f12e7717826271a2fc52dec11cdf8c656'
    'pt-BR'
  end

  language 'ru' do
    sha256 '99dddabd20f8722c317d207e25635f0a0176011ee0f9f13d71995c6c9b41954f'
    'ru'
  end

  language 'tr' do
    sha256 '7ac625f6342c9eb3cdda8f1d3706b1ad937f1b115bfe48f6ee0c9886585dab8d'
    'tr'
  end

  language 'vi' do
    sha256 '6ec0003916ad9063e2e10e71985fdbda89cb1aae3f6beff79d51b7de0a35b842'
    'vi'
  end

  language 'zh' do
    sha256 '6a1610a91a3ae0bba74e2155a64ae3dbfb63d73c092971796584c8957eb84ff8'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc", key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  auto_updates true

  app 'TorBrowser.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl',
                '~/Library/Application Support/TorBrowser-Data',
                '~/Library/Preferences/org.mozilla.tor browser.plist',
              ]
end
