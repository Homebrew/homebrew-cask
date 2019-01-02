cask 'understand' do
  version '5.0.973'
  sha256 '1b26a02bbc3a383fca449cf16ad8b6447b92543ad3ef4b580810ef6618b2987a'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
