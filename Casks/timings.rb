cask :v1 => 'timings' do
  version '2.4.1'
  sha256 'b68b3d01f552bf5c4679f740fb2ecbc1011a9e768208f236814131efa5bc3853'

  url "http://mediaatelier.com/Timings2/Timings_#{version}.zip"
  appcast 'http://mediaatelier.com/Timings/feed.php',
          :sha256 => '72f76163d85517ad0600287a25eb4c0f9fc34bbc243ab168f9dba2e2a3c7fc9e'
  name 'Timings'
  homepage 'http://mediaatelier.com/Timings'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Timings.app'
end
