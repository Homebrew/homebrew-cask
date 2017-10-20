cask 'torbrowser' do
  version '7.0.7'

  language 'ar' do
    sha256 'afd53cbe34c6c3c9d33a77a4e44cb5fa3b33e4e0490cb0258e4cccffb67faf7a'
    'ar'
  end

  language 'de' do
    sha256 'a3b8d38a700430dddcfd2a3cc675f948067635a56fac16f6690bbfe744f68289'
    'de'
  end

  language 'en', default: true do
    sha256 '8d5b82630675341d8555f8714c2558e793698c8ecd4af1f4067ac3d5a1a5bb3f'
    'en-US'
  end

  language 'es' do
    sha256 '59921fb6ebdf89fedb8ea5690cf4b6eb1e74f48cdcccae5c01c08d2b1e7ae8f3'
    'es-ES'
  end

  language 'fa' do
    sha256 'f9e0c8905a1e11ffb6eed81e0ec48632d63d7747e3cbf60733eca81fb7fd127e'
    'fa'
  end

  language 'fr' do
    sha256 '8258b37a6b0354bd9ac9fec4ae7ae5a33aaff0b451e899f3ae560d05cfe4984c'
    'fr'
  end

  language 'it' do
    sha256 'e1447b10902101ae17a492409f5c47259c70d96a7b6e9d8ab87451d99e2f5e6d'
    'it'
  end

  language 'ja' do
    sha256 '1337e03ea9f5fec80c67bf3b01fa605850da390dd8960b5cf39e8dae09466e9a'
    'ja'
  end

  language 'ko' do
    sha256 '2d2e6db38988e7260dbe2053ee128204435e82245de2b2a3dcffc2945ee69f14'
    'ko'
  end

  language 'nl' do
    sha256 '494426e6697e0a1124839df4368d61769241425b229b37bcbbf4afcbb99581f7'
    'nl'
  end

  language 'pl' do
    sha256 'c764a2adddd457f15fb70cdab7fbb85039c9ec9977000eacd2a7e8835c7f68cb'
    'pl'
  end

  language 'pt' do
    sha256 '0d30e18ed20614ddd6d4a4eaea4912a1d0ea91218c2c982cfdb7ecf19b4e8982'
    'pt-BR'
  end

  language 'ru' do
    sha256 'eb45a68cf7e740a81e48816c052af1b7ece5ad69603e1261d59edeb0c6161012'
    'ru'
  end

  language 'tr' do
    sha256 '0550358b3aca699a2a7e3bea821ff21a37542c4cc28a093c7d1ae6bcd3e59a06'
    'tr'
  end

  language 'vi' do
    sha256 '8262cfb465238f5412a162e6f63205cd6afdc75ea1a5bc9d27243663935cb6d0'
    'vi'
  end

  language 'zh' do
    sha256 'c1b099d701266d406cdbd4eac30cb2370a46085d8d49e85daa4e49ef7010eec7'
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
