cask :v1 => 'understand' do
  version '3.1.756'
  sha256 '87b91888b14d1548e618370325353668a9ef12a1e1b988ce2165cce55937e252'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/builds.scitools.com/all_builds/b#{version.sub(%r{.*\.},'')}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  name 'Understand'
  homepage 'https://scitools.com'
  license :commercial
  tags :vendor => 'SciTools'

  app 'scitools/bin/macosx/understand.app'
  app 'scitools/bin/macosx/licenseserver.app'
  binary 'scitools/bin/macosx/almd'
  binary 'scitools/bin/macosx/almfree'
  binary 'scitools/bin/macosx/almhostid'
  binary 'scitools/bin/macosx/almstatus'
  binary 'scitools/bin/macosx/almtest'
  binary 'scitools/bin/macosx/cwork'
  binary 'scitools/bin/macosx/gvlayout'
  binary 'scitools/bin/macosx/und'
  binary 'scitools/bin/macosx/uperl'
end
