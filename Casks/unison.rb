cask :v1 => 'unison' do
  version '2.48.3'
  sha256 '04a59ccc1164fa274082911125b5871cb21019d22b284ec98a4dede23f746d88'

  # petitepomme.net is the official download host per the vendor homepage
  url "https://strank.info/prof/software/Unison-#{version}.app.zip"
  homepage 'http://www.cis.upenn.edu/~bcpierce/unison/'
  license :gpl

  app 'Unison-2.48.3.app'
end
