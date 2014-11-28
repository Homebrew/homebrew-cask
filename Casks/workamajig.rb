cask :v1 => 'workamajig' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/Workamajig/AIR/Workamajig.air'
  homepage 'http://www.workamajig.com/'
  license :unknown

  app 'Workamajig.app'

  caveats <<-EOS.undent
    #{title} requires Adobe Air, available via

      brew cask install adobe-air
  EOS
end
