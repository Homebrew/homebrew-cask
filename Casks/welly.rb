cask 'welly' do
  name 'Welly'

  if MacOS.version <= :snow_leopard
    homepage 'https://code.google.com/archive/p/welly'
    version '2.64'
    sha256 '9403a92d74f5e7e02974a0fe8641ab1e320523948a67add596c964b2c4c13cae'
    url "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/welly/Welly.v#{version}.zip"
  elsif MacOS.version == :lion
    homepage 'https://code.google.com/archive/p/welly'
    version '2.7'
    sha256 'cb24a26432d8927b1159a1865602c3f30b5190f628167c954e4d6cc723cfcb0f'
    url "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/welly/Welly.v#{version}.fix.zip"
  else
    homepage 'https://github.com/clyang/welly'
    version '3.1.1.1'
    sha256 'f17aa74d8668d02ff7c6eee81ae7e0c06d76a51d4aa50624ffe757c95f498ecf'

    url "https://github.com/clyang/welly/releases/download/#{version}/Welly.v#{version}.zip"
    appcast 'https://github.com/clyang/welly/releases.atom'

    auto_updates true
  end

  app 'Welly.app'

  zap trash: [
               '~/Library/Application Support/Welly',
               '~/Library/Caches/Welly',
               '~/Library/Caches/org.net9.Welly',
               '~/Library/Cookies/org.net9.Welly.binarycookies',
               '~/Library/Preferences/org.net9.Welly.plist',
             ]
end
