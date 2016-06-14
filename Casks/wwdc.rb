cask 'wwdc' do
  version '4.2.1'
  sha256 'd1d75a70885bbf9da7b6c39aae146692672b7912f995a8d3b18fb5f2b5c23b33'

  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: '9925c90252904041fa07484b743008a8d1d7426df6bf10b9c9f36b87486461ed'
  name 'WWDC'
  homepage 'https://github.com/insidegui/WWDC'
  license :bsd

  auto_updates true

  app 'WWDC.app'
end
