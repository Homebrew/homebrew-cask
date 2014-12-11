cask :v1 => 'x2goclient' do
  version :latest
  sha256 :no_check

  url 'http://code.x2go.org/releases/X2GoClient_latest_macosx.dmg'
  homepage 'http://x2go.org'
  license :unknown    # todo: improve this machine-generated value

  app 'x2goclient.app'
end
