cask 'unified-remote' do
  version :latest
  sha256 :no_check

  url 'https://www.unifiedremote.com/download/mac'
  name 'Unified Remote'
  homepage 'https://www.unifiedremote.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Unified Remote.app'
end
