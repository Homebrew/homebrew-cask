class Workamajig < Cask
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/Workamajig/AIR/Workamajig.air'
  homepage 'http://www.workamajig.com/'
  license :unknown

  app 'Workamajig.app'
end
