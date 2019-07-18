cask 'understand' do
  version '5.1.992'
  sha256 'ca4f0bc398fc1484061037cd0bc11a966eda3a0f0136337ebcb27f5426fd0b0d'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
