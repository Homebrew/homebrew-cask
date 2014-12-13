cask :v1 => 'understand' do
  version '3.1.756'
  sha256 '87b91888b14d1548e618370325353668a9ef12a1e1b988ce2165cce55937e252'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/builds.scitools.com/all_builds/b756/Understand/Understand-3.1.756-MacOSX-x86.dmg'
  homepage 'https://scitools.com'
  license :unknown # todo: improve this machine-generated value

  app 'scitools/bin/macosx/understand.app'
end
