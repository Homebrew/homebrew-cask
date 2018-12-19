cask 'textricator' do
  version '9.0.44'
  sha256 'd2dd8e8583da43281f6aabe8f80cb256f9a527d5ffacdf9126393352d26650c1'

  # repo1.maven.org/maven2/io/mfj/textricator was verified as official when first introduced to the cask
  url "https://repo1.maven.org/maven2/io/mfj/textricator/#{version}/textricator-#{version}-bin.tgz"
  appcast 'https://repo1.maven.org/maven2/io/mfj/textricator/'
  name 'Textricator'
  homepage 'https://textricator.mfj.io/'

  binary "textricator-#{version}/textricator"
end
