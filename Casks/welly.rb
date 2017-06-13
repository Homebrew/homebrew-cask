cask 'welly' do
  if MacOS.version <= :snow_leopard
    version '2.64'
    sha256 '9403a92d74f5e7e02974a0fe8641ab1e320523948a67add596c964b2c4c13cae'
    url "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/welly/Welly.v#{version}.zip"
  else
    version '2.7'
    sha256 'cb24a26432d8927b1159a1865602c3f30b5190f628167c954e4d6cc723cfcb0f'
    url "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/welly/Welly.v#{version}.fix.zip"
  end

  name 'Welly'
  homepage 'https://code.google.com/archive/p/welly'

  app 'Welly.app'

  caveats do
    discontinued
  end
end
