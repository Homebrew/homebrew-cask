cask :v1 => 'timings' do
  version '2.4.1'
  sha256 'b68b3d01f552bf5c4679f740fb2ecbc1011a9e768208f236814131efa5bc3853'

  url "http://mediaatelier.com/Timings2/Timings_#{version}.zip"
  appcast 'http://mediaatelier.com/Timings/feed.php',
          :sha256 => '10f7fc6bbb54db9916650e3d4c37705cb7900230c60f2375d50b1dbad6a61a3d'
  name 'Timings'
  homepage 'http://mediaatelier.com/Timings'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Timings.app'
end
