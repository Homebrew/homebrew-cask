class Timings < Cask
  version '1.0.4'
  sha256 'e7601405312bd6142514aef98154b2ebe8e06a3154c7afa7bcc03edf0090ddff'

  url "http://mediaatelier.com/Timings/Timings_#{version}.zip"
  appcast 'http://mediaatelier.com/Timings/feed.php'
  homepage 'http://mediaatelier.com/Timings'
  license :unknown

  app 'Timings.app'
end
