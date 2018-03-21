cask 'texturepacker' do
  version '4.6.3'
  sha256 '16eac43171c7a5e5cbdb25adb37990165f2b6ff8af225621353fed78051e95f0'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: 'aa627a4933cfa493f2e7b72d5e02b78f784cb44a09e4fd2036c6da4a8b559445'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
