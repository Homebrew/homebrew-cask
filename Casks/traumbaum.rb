cask :v1 => 'traumbaum' do
  version '1.11'
  sha256 'f93dc3caed72896372662798f51cb185bd007b771952f137ab384bde487e3785'

  url 'http://sumiisan.com/traumbaum/downloads/traumbaum%20osx%201.11.zip'
  name 'traumbaum'
  homepage 'http://traumbaum.tumblr.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'traumbaum.app'
end
