cask 'teleport' do
  version '1.2.1'
  sha256 '9b193b300cedd7d52cdf5e76c85afe5ad24709e6308c90afec19216627eb3476'

  url "http://abyssoft.com/software/teleport/downloads/teleport#{version.no_dots}.zip"
  appcast 'http://www.abyssoft.com/software/teleport/versions.xml',
          checkpoint: 'b7b68db7e36eab08273f35394eaa245b60ec48525a23c6f35a4daf7478e707c8'
  name 'teleport'
  homepage 'http://www.abyssoft.com/software/teleport/'

  app 'teleport/teleport.app'
end
