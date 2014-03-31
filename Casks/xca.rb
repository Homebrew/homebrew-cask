class Xca < Cask
  url 'http://sourceforge.net/projects/xca/files/latest/download',
    :user_agent => :fake
  homepage 'http://xca.sourceforge.net/'
  version 'latest'
  no_checksum
  link 'xca.app'
end
