cask 'torbrowser' do
  version '6.5.1'

  language 'ar' do
    sha256 '8d1ca380d72a76a8cdd19778615ebbdc32707ae588aa0548d9242412cabca0f2'
    'ar'
  end

  language 'de' do
    sha256 'eee3eeed7df0228b9e8aeee465242d403ead0243468ffcb7459ffa6eb27761f4'
    'de'
  end

  language 'en', default: true do
    sha256 '4155633dd51db9c805e8a81a9fd180e7235077f15023b5f002648f1c2a8bef92'
    'en-US'
  end

  language 'es' do
    sha256 '18c6d496dce9b18650c669c40e7ad3e7a8ecc08e41db5c56f66ca492bdb0e929'
    'es-ES'
  end

  language 'fa' do
    sha256 '33913b38d46893d0d8918ac7c2e1d886dfafe8bb719c2c105c9999363a329f96'
    'fa'
  end

  language 'fr' do
    sha256 'e3aed0cf0cb9d905f9d98e4dd21821de090572ed978fbf587f61042379c87270'
    'fr'
  end

  language 'it' do
    sha256 '2d3b51e79eeb501184e386156ffe87a2a6cb4baec26e67dea97edf886dd620c5'
    'it'
  end

  language 'ja' do
    sha256 '6279d86ea792b28073da5e41f67efbea2beb97b7c48162e2fd4c61168a78165b'
    'ja'
  end

  language 'ko' do
    sha256 '312c7a0ed6f0fabb3f2a17b0b505217444bb5ba7e8d9912a328d55721dd75f8c'
    'ko'
  end

  language 'nl' do
    sha256 'd488dc3f7593c17189108b2d875de58780c4e9e447e567f3affc06020172035f'
    'nl'
  end

  language 'pl' do
    sha256 'd285a5c25ebdb82829e141d6aa889587dcdaca00649c5283da7ce9a654c12642'
    'pl'
  end

  language 'pt' do
    sha256 '7be858599beea64b7252bd90d728e8b8254d65cb5bcdd7a2af2ab46a82235ab2'
    'pt-BR'
  end

  language 'ru' do
    sha256 '8e9046544f9d710cd521e62ee83000ba70dcac6c0e879a5d5a419111da854112'
    'ru'
  end

  language 'tr' do
    sha256 'bb6b3007f2f3af254e26c016a52ac4feefd07737f4c1b8151327fd7e49351ce9'
    'tr'
  end

  language 'vi' do
    sha256 'a852af1acd61779ffbb98b3d6b946847c0c58579c120bc9904145e7087eedc38'
    'vi'
  end

  language 'zh' do
    sha256 'c4aff31cb4157b20681553342f934806b7b3a76035079fa88dc683a0f81970fb'
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
