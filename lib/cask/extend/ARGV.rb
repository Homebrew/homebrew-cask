module Cask::ArgvExtension
  def get_channel
    collect do |argument|
      match = /--channel=(\w+)/.match(argument)
      if match
        return match[1]
      end
    end
    return nil
  end
end
