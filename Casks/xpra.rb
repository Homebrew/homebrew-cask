cask :v1 => 'xpra' do
  version '0.15.1'
  sha256 'b0075aa1184d25f32019026e2dd1373f3c46de9ba8da44d18d60cee7b9a0f425'

  url 'https://www.xpra.org/dists/osx/x86/Xpra.dmg'
  name 'Xpra'
  homepage 'https://www.xpra.org'
  license :gpl

  app 'Xpra.app'
end
