cask :v1 => 'zipeg' do
  version :latest
  sha256 :no_check

  url 'http://www.zipeg.net/downloads/zipeg_mac.dmg'
  homepage 'http://www.zipeg.net/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Zipeg.app'
end
