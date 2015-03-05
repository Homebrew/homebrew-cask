cask :v1 => 'zipcleaner' do
  version :latest
  sha256 :no_check

  url 'http://roger-jolly.nl/software/downloads/zipcleaner/ZipCleaner.zip'
  homepage 'http://roger-jolly.nl/software/#zipcleaner'
  license :isc

  app 'ZipCleaner.app'
end
