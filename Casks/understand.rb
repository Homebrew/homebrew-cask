cask 'understand' do
  version '5.0.963'
  sha256 '5d045701001a42e1405f191b9eb9e6a09b1d37de570795a5860699bdca11156c'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
