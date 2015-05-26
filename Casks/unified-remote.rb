cask :v1 => 'unified-remote' do
  version :latest
  sha256 :no_check

  url 'http://www.unifiedremote.com/download/macosx-setup'
  name 'Unified Remote'
  homepage 'http://www.unifiedremote.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Unified Remote.app'
end
