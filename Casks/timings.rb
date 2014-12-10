cask :v1 => 'timings' do
  version '1.0.4'
  sha256 'e7601405312bd6142514aef98154b2ebe8e06a3154c7afa7bcc03edf0090ddff'

  url "http://mediaatelier.com/Timings/Timings_#{version}.zip"
  appcast 'http://mediaatelier.com/Timings/feed.php',
          :sha256 => '8802005fc763ac92339326583c2c34d3513766758669d03a1861a886e61ed319'
  homepage 'http://mediaatelier.com/Timings'
  license :unknown    # todo: improve this machine-generated value

  app 'Timings.app'
end
