class Xca < Cask
  url 'https://sourceforge.net/projects/xca/files/latest/download',
    :user_agent => :fake
  homepage 'http://xca.sourceforge.net/'
  version 'latest'
  sha256 :no_check
  link 'xca.app'
end
