cask 'tor-browser' do
  version '9.0.1'

  language 'ar' do
    sha256 '218db3c523b2df554b4807fe10b19dfcdc0a1aeb62f10a075bcaf90d78f46ef3'
    'ar'
  end

  language 'ca' do
    sha256 'a84b4b062e7128c0b8486a1b8537e76013c8c6233f21349a19fcee268f298744'
    'ca'
  end

  language 'cs' do
    sha256 'eaac6f017376b11dd1ed8b95acd544f7445a43d3761e2863482363325d4bce93'
    'cs'
  end

  language 'da' do
    sha256 '23f783ca4f65313396e1c5867125b5abb611092cc2c5a0a783e1713a9cc3f8b5'
    'da'
  end

  language 'de' do
    sha256 '806bc4ab520ad1c2105045047279092484ff9306dcab15c8145ec70530fb8c78'
    'de'
  end

  language 'el' do
    sha256 '86d3bc3df1b11f8a15fefb25892f87afbbe17bc694a66e3e7b83877ae03b2f01'
    'el'
  end

  language 'en', default: true do
    sha256 'c1cbe06b25b79fc095e4c891677dd12c7d0f34c78dced07d41b1772e27aa2034'
    'en-US'
  end

  language 'es-ar' do
    sha256 '2d353dc1c93b686430d2a185e25120103026c29b3d39bb2d96c5d9bf7d7c69c6'
    'es-AR'
  end

  language 'es-es' do
    sha256 'b29cdf915cc2e3b70bbd397d8402461089ca28417ae6962fa9ea10b8612ac752'
    'es-ES'
  end

  language 'fa' do
    sha256 'c965eaa1e4a52bf85ad3c52aad3f044883bd01ecd0e217a830e3d6eb8424da51'
    'fa'
  end

  language 'fr' do
    sha256 '8f06dfbe9cf942938ab038e2c4fcd4f173b84de281288f20174edd8ec6d16be8'
    'fr'
  end

  language 'ga' do
    sha256 '21eab007dd17f2a9934e4b4b19d88205b1c73926f41d3ac759cf262518fdc3ab'
    'ga-IE'
  end

  language 'he' do
    sha256 '687c6b093e99aab6602b3473f8b449973450d4e4223c6db21660b1c84d74a88a'
    'he'
  end

  language 'hu' do
    sha256 '3c32715e4f77d901071773b2740b097412a5653a2f1401ab9e7ca485564deec3'
    'hu'
  end

  language 'id' do
    sha256 '02d7540c66217c24047b37f7d4bc7141bb23aeb110216bc8fe267c97af5a423e'
    'id'
  end

  language 'is' do
    sha256 '8ee2a7ecf4353f6f006ac55e437d402f83806b3f107967bc923bfd630997be0b'
    'is'
  end

  language 'it' do
    sha256 '6176490203a4b8d354ba22f9924053efa1b5c1f0349bbcfcb3ece03d424fc407'
    'it'
  end

  language 'ja' do
    sha256 '9b7539104b412fcffc208eb8020c2aa4cf3cd37df17f82dcf345336761491192'
    'ja'
  end

  language 'ka' do
    sha256 '4a32983b2120fb938907b5bb9de2426a31fc0d7940979d2279d30b037145ef2d'
    'ka'
  end

  language 'ko' do
    sha256 'd09882ce2719a20dd1fa08d4fdfd3541336cdcea0a1d394532b8b34539299f87'
    'ko'
  end

  language 'mk' do
    sha256 'abc3b7fa29148dcff3db5a8eae038725ca6f372e602bf4fe6856c56338ed02b2'
    'mk'
  end

  language 'nb' do
    sha256 '716dc148d63ac1e93c05a573fbc3ab827b017a7ce11c49787859434dfbe9ed6d'
    'nb-NO'
  end

  language 'nl' do
    sha256 '5bef4ac666409457d0f0053a2d6bc0113ec5e27fa5f230762935c254eb728f41'
    'nl'
  end

  language 'pl' do
    sha256 'd92bee1dbf4b78ab0958471e8d2756d60dbe3f88b582eafe040701a3ce96b50f'
    'pl'
  end

  language 'pt' do
    sha256 'f7d831148f03188d31c3feda017d4ceb41a9a88a8120065dc5e623a366804839'
    'pt-BR'
  end

  language 'ro' do
    sha256 'cec659ebbd015b3ab10ddaf1a5b4fe2d33a97a8658e8f164a34a6e4d28a5bc65'
    'ro'
  end

  language 'ru' do
    sha256 '9c8ff0335514dbaa4cc1fb4d1b2a622909d67551cd4dfa5e520f72a4428975b8'
    'ru'
  end

  language 'sv' do
    sha256 '30ba3a0e606668c5d9d3e6b8df97d78a5490fa862e920f8373b1d8f32cad5deb'
    'sv-SE'
  end

  language 'tr' do
    sha256 'fc4cd9feaf8b8baa6c86584bd3f877088ef7f3f7f781db278289ac472cc44117'
    'tr'
  end

  language 'vi' do
    sha256 'b33a2a2d20d8f2a7f971f5db8975be76628f149f2d8853f316947cfb42c524e9'
    'vi'
  end

  language 'zh-cn' do
    sha256 'e99c575a080df285e954f054b20687b1cb9bca5ed535a172e930940b0e2f3c2f'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '54bf7423afdd653c85f5fc3177a5490757e25ee3b891483831b3f72f5e7d770c'
    'zh-TW'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://dist.torproject.org/torbrowser/'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'

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
