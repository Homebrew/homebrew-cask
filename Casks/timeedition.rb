cask 'timeedition' do
  version '1.1.6'
  sha256 'd0bb9fd92c0d7ee85813ed96a1e2e75a730d2fb4f564d3891cc645c005ca16ff'

  # sourceforge.net/timeedition was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/timeedition/timeEdition#{version}-macosx.dmg.zip"
  appcast 'https://sourceforge.net/projects/timeedition/rss',
          checkpoint: 'cec11e55eba60ac1f7da63f1f81d7924a0d72ad68640011d5db9fb56547d2d8d'
  name 'timeEdition'
  homepage 'https://www.timeedition.com/old/en/'

  app "timeEdition #{version}/timeEdition.app"

  caveats do
    discontinued
  end
end
