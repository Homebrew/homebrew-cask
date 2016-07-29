cask 'timeedition' do
  version '1.1.6'
  sha256 'd0bb9fd92c0d7ee85813ed96a1e2e75a730d2fb4f564d3891cc645c005ca16ff'

  # downloads.sourceforge.net/sourceforge/timeedition was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/timeedition/timeEdition#{version}-macosx.dmg.zip"
  name 'timeEdition'
  homepage 'https://www.timeedition.com/old/en/'
  license :gpl

  container nested: "timeEdition#{version}-macosx.dmg"

  app "timeEdition #{version}/timeEdition.app"

  caveats do
    discontinued
  end
end
