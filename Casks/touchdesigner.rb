cask 'touchdesigner' do
  version '099.2018.22800'
  sha256 'fe08d23e976eb9490e5e5842b5487bbb807a14ce260cb7947d08e03ea9c15692'

  url "https://www.derivative.ca/Builds/TouchDesigner#{version}.dmg"
  appcast "https://www.derivative.ca/#{version.major}/Downloads/Default.asp",
          checkpoint: '57d87cb7da7043c34f5003ce4052a87b6d439865bc1a7a2a714005bd155e29db'
  name 'Derivative TouchDesigner'
  homepage 'https://www.derivative.ca/'

  app "TouchDesigner#{version.major}.app"
end
