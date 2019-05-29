cask 'textadept' do
  version '10.4'
  sha256 '2f48b8ff639842a50336462d37d7c309a9406a1225062fe70eae5e6a019dd470'

  url "https://foicica.com/textadept/download/textadept_#{version}.osx.zip"
  appcast 'https://foicica.com/textadept/feed'
  name 'Textadept'
  homepage 'https://foicica.com/textadept/'

  app "textadept_#{version}.osx/Textadept.app"
end
