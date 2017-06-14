cask 'torbrowser' do
  version '7.0.1'

  language 'ar' do
    sha256 '325550bf93c24e302354d4bcf90bda04540c4e8c78c270b735b5598e1dcd988d'
    'ar'
  end

  language 'de' do
    sha256 '0f5c920e2c05f61d24ca7b33dd083d26ee7d95aa589b15800ed1b48242d0f1c4'
    'de'
  end

  language 'en', default: true do
    sha256 'c9fb306b29d88c0a026d628a9bb7e170be44a5efdbbb7c65a276827ffbed64bd'
    'en-US'
  end

  language 'es' do
    sha256 'be98cc77dc8c581461ccd9476affc7ec3351768b5526908b6cce492c0fec42b6'
    'es-ES'
  end

  language 'fa' do
    sha256 '33595b4e8fa3e8850ad261a7229836920606e78f7732a9a97e4507ce9aebf49a'
    'fa'
  end

  language 'fr' do
    sha256 'ba99abdd11dda0cb62f921c39db888fad1d327b7ff3661ff70e9555549b17d08'
    'fr'
  end

  language 'it' do
    sha256 '212937f804d885b8245529fc692230f811ffd28269b308e6bee4934a3b18481b'
    'it'
  end

  language 'ja' do
    sha256 'c2a79dfe0ea8c1e3b96d19bbd875e4d931dd5322defab8eb1e96730bd0870992'
    'ja'
  end

  language 'ko' do
    sha256 'dbf03d694c54643a9ee302735e4f8c73fd7850d4d5d80680de84eb3dda353839'
    'ko'
  end

  language 'nl' do
    sha256 '23b5d958a5ffbace599bffa57ad1297979fb529447f645d9344edd03e64f4e15'
    'nl'
  end

  language 'pl' do
    sha256 'fee2ae000908b2f52af843e3ad180a6d8149a68babbf31b8ff8eaa9ade4ab310'
    'pl'
  end

  language 'pt' do
    sha256 '3b30ee748e31ab435bb107420384bb3dcb87a671a4c2f97b93d447b927477c6f'
    'pt-BR'
  end

  language 'ru' do
    sha256 '3b89ff0012e21952a4f8e8e5310d523affebbf4b624258ab200b01bb25d3e7bf'
    'ru'
  end

  language 'tr' do
    sha256 '8f7bcce0a87d5c837eb012238445fd11ae43296e127f59d3b19c1632b55a9688'
    'tr'
  end

  language 'vi' do
    sha256 '76d0e57a8864ad7263dbddaf760e60a5571cf5d335f4b4859971fec3db15aaff'
    'vi'
  end

  language 'zh' do
    sha256 '7ea73c98eb5fe68de65f7f7be51a0df54c2575bdab0883e646df14d2cfe84a19'
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
