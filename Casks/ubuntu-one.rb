cask :v1 => 'ubuntu-one' do
  version :latest
  sha256 :no_check

  url 'https://one.ubuntu.com/download/mac/client'
  name 'Ubuntu One'
  homepage 'http://one.ubuntu.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Ubuntu One.app'
end
