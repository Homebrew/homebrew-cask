cask :v1 => 'understand' do
  version '3.1.756'
  sha256 :no_check

  url 'https://s3.amazonaws.com/builds.scitools.com/all_builds/b756/Understand/Understand-3.1.756-MacOSX-x86.dmg'
  homepage 'https://scitools.com'
  license :unknown

  app 'scitools/bin/macosx/understand.app'
end
