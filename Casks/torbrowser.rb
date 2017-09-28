cask 'torbrowser' do
  version '7.0.6'

  language 'ar' do
    sha256 '73907035db5fc99e29ba348f562ba466f4da0f876f4f96369e68302f3ad5ff36'
    'ar'
  end

  language 'de' do
    sha256 'e8742f60b1b624386cbd9dd4803a08f271f40e87f66e0976cd343fe2be813669'
    'de'
  end

  language 'en', default: true do
    sha256 '4a5b638d2ecc4d7dc4a8708d7d14a1456674ace74a453dc08dc3f3dd4ef47dfb'
    'en-US'
  end

  language 'es' do
    sha256 '5f81248e87cef144e30261dd8a1837317af51d8fac5ea5d5ba6dcbe2b1298063'
    'es-ES'
  end

  language 'fa' do
    sha256 '1438a6ce68a29661fb10ae1eb17e3f11a2050eaf4dbde199e35371ed91c73b48'
    'fa'
  end

  language 'fr' do
    sha256 'fdda5f995c775c4cb5e170272570f70bc34717f80166907effcecd2a1564deab'
    'fr'
  end

  language 'it' do
    sha256 'dc5f395cb35707b6cb1f5c8f61c425931e500d960cf8b56d0b04a94a67c06819'
    'it'
  end

  language 'ja' do
    sha256 '763322d452ac797724cebe77a3fcec04d860a5f6014e55180d34ca97f454ab8a'
    'ja'
  end

  language 'ko' do
    sha256 'fe67344c7b09836f102884631e73d84e5ca5a15e656b59ce63eee05943e500e2'
    'ko'
  end

  language 'nl' do
    sha256 '4f3723993d2e9d86a7e96a645350e933242c49e36148e75baf16fc6bb17ffaea'
    'nl'
  end

  language 'pl' do
    sha256 'b797148a376efcbcf8465dff4a592cd96318e13503e6ed28d3319c196832ec43'
    'pl'
  end

  language 'pt' do
    sha256 '814f33785a1d50c75aa7400bade290fa2e25aed56bb49d9bb50bd863745633d6'
    'pt-BR'
  end

  language 'ru' do
    sha256 '1dd8d5e93fdbd08fcf596b40b4ea0d8043b265f3a2d306ca2546b019f1007538'
    'ru'
  end

  language 'tr' do
    sha256 'cfb38dc6f7d26150649c32a67a56719a421eaf6a0220d2c1584c0ea8abaf2bc6'
    'tr'
  end

  language 'vi' do
    sha256 '48cb37562155f9bf6b5d3d698a049ccc108c03c5aec981cb140666e66ae805e7'
    'vi'
  end

  language 'zh' do
    sha256 'a0c5057b14aa1955202b1d1ac52303f26a0db4332ee4a5ec5bf60df8cc2fc738'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc", key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  auto_updates true

  app 'TorBrowser.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl',
      trash:  [
                '~/Library/Application Support/TorBrowser-Data',
                '~/Library/Preferences/org.mozilla.tor browser.plist',
                '~/Library/Preferences/org.torproject.torbrowser.plist',
              ]
end
