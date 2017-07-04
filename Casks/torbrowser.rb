cask 'torbrowser' do
  version '7.0.2'

  language 'ar' do
    sha256 '7f30e763f1c441a7e8c126a3a8e8f1096acb0b54bc1e322d7fa07724540a8eb4'
    'ar'
  end

  language 'de' do
    sha256 '38b9d20e0e2b61b8f74b6427c75ec9fdc6612bd7c08907c1dcca67696bb76403'
    'de'
  end

  language 'en', default: true do
    sha256 '122161eac00af4ce65c0415133240b80625b790469b8d80f91637b0e8e43760f'
    'en-US'
  end

  language 'es' do
    sha256 '7fe0c68a58b110c92e80adc61f904391273843ef10ae37900c9b833d85226e7a'
    'es-ES'
  end

  language 'fa' do
    sha256 '565c48362c836bef4f670f3238e27a0b3ff33060697b699e777f38b305387093'
    'fa'
  end

  language 'fr' do
    sha256 'ee00628e129a38579d770b4f12d42fa624a4522e59920cfbb944a398f2ba6e5d'
    'fr'
  end

  language 'it' do
    sha256 '51424ab2f83c1dbb871aed629baf62cfcda0925020feebbdf597978b98cf0a8a'
    'it'
  end

  language 'ja' do
    sha256 '3a54493ce7e259a5225dd238766498bf380d43d45f4b3d6271af6381df515ed4'
    'ja'
  end

  language 'ko' do
    sha256 '2429b6bd05ef337c0644b5cd12b06180d186383237ed34d6770a70d9c2d448e0'
    'ko'
  end

  language 'nl' do
    sha256 '8bce034a3b6cb77d897971dcbd22599f29a1a01bf1bc5b1f4115d86c4e93258b'
    'nl'
  end

  language 'pl' do
    sha256 '1359d3bd9f25657fe19278e2c2c91817ee7a478140ef68b60be0425b82843b41'
    'pl'
  end

  language 'pt' do
    sha256 '1bdaff0cb3e5d6b2d9ec09966f0b094fa6700223c3e234ee8597a83663da013f'
    'pt-BR'
  end

  language 'ru' do
    sha256 'c161af3b87eea727007c6cad09350a7f63fdc194708c72cf4205d45b060d31a4'
    'ru'
  end

  language 'tr' do
    sha256 '4997b788f44aad63bbe4870ca55c1dd4e01b9d28e5bd35c4efc88748e1f696d8'
    'tr'
  end

  language 'vi' do
    sha256 '378c47798ec377cd8c74dfe26744dcd287223ffbc462ea8c691dcf1169e6eb38'
    'vi'
  end

  language 'zh' do
    sha256 'e067229550a8a9c0ef9c43b77dbcc7be1fcd09144309ba92ee4ad73292e1ea6f'
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
