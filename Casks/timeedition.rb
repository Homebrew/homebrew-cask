cask 'timeedition' do
  version '1.1.6'
  sha256 'd0bb9fd92c0d7ee85813ed96a1e2e75a730d2fb4f564d3891cc645c005ca16ff'

  # sourceforge.net/timeedition was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/timeedition/timeEdition#{version}-macosx.dmg.zip"
  appcast 'https://sourceforge.net/projects/timeedition/rss'
  name 'timeEdition'
  homepage 'https://www.timeedition.com/en/'

  app "timeEdition #{version}/timeEdition.app"

  caveats do
    discontinued
  end
end
