cask 'wings3d' do
  version '2.1.6'
  sha256 '31b17884429591a503551634560a46897804b8f9ce540f7aadc5e04a67234acb'

  # sourceforge.net/wings was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wings/wings-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/wings/rss',
          checkpoint: 'be4a600a7d85c998dad71a26f6c08ed7304702ec37a321060fde58105c746299'
  name 'Wings 3D'
  homepage 'http://www.wings3d.com/'

  app 'Wings3D.app'
end
