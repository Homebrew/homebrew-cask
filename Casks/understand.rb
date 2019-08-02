cask 'understand' do
  version '5.1.994'
  sha256 '73c1df2d2cbdfbac901c88fe581a6b80ff3b53d2efea030099f64fe6c88c7d10'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
