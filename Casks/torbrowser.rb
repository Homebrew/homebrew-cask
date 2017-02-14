cask 'torbrowser' do
  version '6.5'

  language 'ar' do
    sha256 '179f465bce72514b6f022e91b2b77daca3cd04deff78b4ff0d9cb742c7039f74'
    'ar'
  end

  language 'de' do
    sha256 '9fac4548885115577f94c876190407923ba3286812797d20c696c31c2cbaaa75'
    'de'
  end

  language 'en', default: true do
    sha256 '3496a928aba9c0504f7c143a6c4d4fcd859cfbd818d6ce3fbb1538fe8d225bf5'
    'en-US'
  end

  language 'es' do
    sha256 'c775441a6f13fa55dba54152d4c1993f15455add2997132fc102eb5f914f6acc'
    'es-ES'
  end

  language 'fa' do
    sha256 '7201156ac62f8d0e756edb31c9fab72d18a6d23312d5705df98f84aefc8509b2'
    'fa'
  end

  language 'fr' do
    sha256 '4936b93bc2207636cfbaf734dd19d0d0f69f567faa79cdc127137fdb953716e2'
    'fr'
  end

  language 'it' do
    sha256 '518fda0f670dff38a6f944106dc582c676669a3a0427d677835e413823928acc'
    'it'
  end

  language 'ja' do
    sha256 'd394ae5bb720b8fd3c4a3ed044c2c75289c3b8dbdf36d55b1add6bbae26d0823'
    'ja'
  end

  language 'ko' do
    sha256 '9c4c96f0870afdcab8118f966feb605f77cd27d2fb722f50dc598b1c454ce32a'
    'ko'
  end

  language 'nl' do
    sha256 'ed9e45cf278d4d5071f6ddf1725fc990167a1d8630aaaef7911b40bdd71d4e05'
    'nl'
  end

  language 'pl' do
    sha256 '861dd08d040fb1a8de979bebf849e73beaf3fa0f03ad7d12705aa3f824aa4d49'
    'pl'
  end

  language 'pt' do
    sha256 '6cd60d251c3348039749281cb474c14ab8e026157a3f53dfd36729e8691c1d6d'
    'pt-BR'
  end

  language 'ru' do
    sha256 '192b96569bce3712e1b3a1abae45bd0ef763df8e32fc9193c55385db123964c4'
    'ru'
  end

  language 'tr' do
    sha256 '6ce6ec4413fd8cf2e5364bddd8505966e29748e6a3b150668703d96e639b9db4'
    'tr'
  end

  language 'vi' do
    sha256 '36bc05e357f04a693e1719a068a4779ff0b2e50b4362b5cf4e8d6c27e518ad17'
    'vi'
  end

  language 'zh' do
    sha256 '07e0e7c82ebe3e58935190d5023d66a6e2ba33399f8bdb32be899ce156a84b72'
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
