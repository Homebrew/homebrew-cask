cask 'textricator' do
  version '9.0.43'
  sha256 'ca899bbf527cdd6a29ff9fc872e7974609df22ed921827f9de0bef24e492838d'

  # repo1.maven.org/maven2/io/mfj/textricator was verified as official when first introduced to the cask
  url "https://repo1.maven.org/maven2/io/mfj/textricator/#{version}/textricator-#{version}-bin.tgz"
  appcast 'https://github.com/measuresforjustice/textricator/releases.atom'
  name 'Textricator'
  homepage 'https://textricator.mfj.io/'

  binary "textricator-#{version}/textricator"
end
