cask :v1 => 'zoc' do
  version '6.63'
  sha256 '45975bc7a11a7cc16652b0ca13e9f1007f09055e2c021176b0b08390921211e6'

  url "http://www.emtec.com/downloads/zoc/zoc#{version.gsub('.','')}.dmg"
  name 'ZOC'
  homepage 'http://www.emtec.com/zoc/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'zoc6.app'
end
