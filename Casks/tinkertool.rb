cask :v1 => 'tinkertool' do
  version '5.5'
  sha256 '693ed70bcb74a4526216eb21c09a0ba3b84cacac2331348e7c31c5f173282fe8'

  url 'http://www.bresink.eu/download3.php?PHPSESSID=dctlgo5s13gf3jtl0mgg5rl272'
  name 'TinkerTool'
  homepage 'http://www.bresink.com/osx/TinkerTool.html'
  license :freemium    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TinkerTool.app'
end
