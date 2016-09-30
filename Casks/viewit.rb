cask 'viewit' do
  version '2.59'
  sha256 'd128933b6e0b81bc30c5e6b31db523b80bd15094f7e03834335b6b4f566cc4c3'

  url "http://www.hexcat.com/downloads/ViewIt-#{version}.zip"
  name 'ViewIt'
  homepage 'http://www.hexcat.com/viewit/'
  license :commercial

  app 'ViewIt.app'
end
