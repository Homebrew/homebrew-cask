cask :v1 => 'tuneup' do
  version :latest
  sha256 :no_check

  url 'http://www.tuneupmedia.com/redirect/mac-download'
  homepage 'http://www.tuneupmedia.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'TuneUp.app'
end
