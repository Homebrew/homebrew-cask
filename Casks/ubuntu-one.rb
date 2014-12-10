cask :v1 => 'ubuntu-one' do
  version :latest
  sha256 :no_check

  url 'https://one.ubuntu.com/download/mac/client'
  homepage 'http://one.ubuntu.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Ubuntu One.app'
end
