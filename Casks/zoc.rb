cask :v1 => 'zoc' do
  version '7.01.0'
  sha256 '6d4d35be75ad87f8b11644c1823e5c11c17e5667a11cc8f94ea00f2a8e53461b'

  url "http://www.emtec.com/downloads/zoc/zoc#{version.gsub('.','')}.dmg"
  name 'ZOC'
  homepage 'http://www.emtec.com/zoc/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'zoc7.app'
end
