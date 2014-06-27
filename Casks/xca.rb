class Xca < Cask
  version 'latest'
  sha256 :no_check

  url 'https://sourceforge.net/projects/xca/files/latest/download',
    :user_agent => :fake
  homepage 'http://xca.sourceforge.net/'

  link 'xca.app'
end
