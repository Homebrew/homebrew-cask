cask :v1 => 'unified-remote' do
  version :latest
  sha256 :no_check

  url 'http://www.unifiedremote.com/download/macosx-setup'
  homepage 'http://www.unifiedremote.com'
  license :unknown

  app 'Unified Remote.app'
end
