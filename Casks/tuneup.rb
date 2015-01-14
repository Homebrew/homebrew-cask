cask :v1 => 'tuneup' do
  version :latest
  sha256 :no_check

  url 'http://www.tuneupmedia.com/redirect/mac-download'
  name 'TuneUp'
  homepage 'http://www.tuneupmedia.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TuneUp.app'
end
