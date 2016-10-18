cask 'torbrowser' do
  version '6.0.5'

  language 'ar' do
    sha256 'e9fdad13aec3679a00af0614474877b856e59c5b965bb88107ca4dcb3a9923c9'
    'ar'
  end

  language 'de' do
    sha256 '85663a210c0f8efb8f637e35fdfc0efa23f910ad8e4c4be2cfe097c0a3ee8429'
    'de'
  end

  language 'es' do
    sha256 'be7acf756ae9ee9e5af177f82689f739a2fecb6b37ee7d90107665c2765d5044'
    'es-ES'
  end

  language 'en', default: true do
    sha256 'd79e18d691a407c9cc06ec508701bff2283d73b65d4321e254763b17d0a13a09'
    'en-US'
  end

  language 'fa' do
    sha256 'c752d17676730059b32db9fc4f89df5b3c7c0bcffb2e41a70ea5695dcd12d768'
    'fa'
  end

  language 'fr' do
    sha256 '64296b0694753ff5ce44f95f3b6c357f4b00d38794d783ff5b18a74fe166f88d'
    'fr'
  end

  language 'it' do
    sha256 '088ea61fed53dbded627dc95ef1c4610e0dfbcb7ef365f7af8ec45af9723f833'
    'it'
  end

  language 'ja' do
    sha256 '6451028769dd8b8983f8f651cef540dad7f0d8d286bcee30ea33fd50d07947b2'
    'ja'
  end

  language 'ko' do
    sha256 '0505423cdf9e7ec91826ff126d943fe90810e2c359d535342b8fc3ac6823a5ba'
    'ko'
  end

  language 'nl' do
    sha256 'c7aa6cc8585465d4e598152260f52d2b3804a574c23e0b17a171d5eac8bd41ec'
    'nl'
  end

  language 'pl' do
    sha256 'ea00ef6da19f8c52c32af5b5b21f389610eaea2751f602ef9749a043de6a807a'
    'pl'
  end

  language 'pt' do
    sha256 '606f02e41eb1be0d345c80d1a462d8bfc21b1185ab268b134d69674f267106db'
    'pt-PT'
  end

  language 'ru' do
    sha256 '1f979d868335ac737f286a349c5c72ef2eb99e42b023751da9a6970af17b9710'
    'ru'
  end

  language 'tr' do
    sha256 '32b207fa9fbae37cc78b43eac4cef4c0966069dc94176ee035c0bf6390caee2a'
    'tr'
  end

  language 'vi' do
    sha256 'f2a8c9cc43727d44916aab74bdebeb43d66b5264e23ea900168f61988fc5e838'
    'vi'
  end

  language 'zh' do
    sha256 '9a4d96bfa614faa5df4b1e87e3623dd59f526be9fad09eec6427c8766fb22dcb'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl',
                '~/Library/Application Support/TorBrowser-Data',
                '~/Library/Preferences/org.mozilla.tor browser.plist',
              ]
end
