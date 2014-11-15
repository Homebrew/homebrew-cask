cask :v1 => 'ubuntu-one' do
  version :latest
  sha256 :no_check

  url 'https://one.ubuntu.com/download/mac/client'
  homepage 'http://one.ubuntu.com'
  license :unknown

  app 'Ubuntu One.app'
end
