cask :v1 => 'the-escapers-flux' do
  version :latest
  sha256 :no_check

  url 'http://instruktion.net/theescapers/downloads/FluxV4.zip'
  appcast 'http://www.theescapers.com/flux/flux.xml'
  name 'Flux'
  homepage 'http://www.theescapers.com/flux/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Flux.app'
end
