
cask ‘UnrealEngine’ do

    version '4.20' 
    sha256 '#' # review
    url "https://www.unrealengine.com/en-US/download"
    # appcast '#' # review
    name ‘UnrealEngine’
    homepage 'https://www.unrealengine.com/'
    # app "/Applications/junXion v5.38 release/junXion.app" # needing review
    zap trash: '~/Library/Caches/UnrealEngine’
  
  end
  