cask 'welly' do
  if MacOS.release <= :leopard
    version '2.4'
    sha256 '8cf6ca119184112e774103f6df1e279826c10d64fe4b303167dc68ffd28f6b8b'
    url "https://storage.googleapis.com/google-code-archive-downloads/v1/code.google.com/welly/Welly.v#{version}.zip"
  elsif MacOS.release <= :snow_leopard
    version '2.64'
    sha256 '9403a92d74f5e7e02974a0fe8641ab1e320523948a67add596c964b2c4c13cae'
    url "https://storage.googleapis.com/google-code-archive-downloads/v1/code.google.com/welly/Welly.v#{version}.zip"
  else
    version '2.7'
    sha256 'cb24a26432d8927b1159a1865602c3f30b5190f628167c954e4d6cc723cfcb0f'
    url "https://storage.googleapis.com/google-code-archive-downloads/v1/code.google.com/welly/Welly.v#{version}.fix.zip"
  end

  name 'Welly'
  homepage 'https://code.google.com/archive/p/welly'
  license :gpl

  app 'Welly.app'

  caveats do
    discontinued
  end
end
