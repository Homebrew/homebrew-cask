class TheEscapersFlux < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://instruktion.net/theescapers/downloads/FluxV4.zip'
  appcast 'http://www.theescapers.com/flux/flux.xml'
  homepage 'http://www.theescapers.com/flux/'

  link 'Flux.app'
end
