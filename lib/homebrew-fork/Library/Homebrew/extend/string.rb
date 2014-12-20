class String
  def undent
    gsub(/^.{#{(slice(/^ +/) || '').length}}/, '')
  end

  # eg:
  #   if foo then <<-EOS.undent_________________________________________________________72
  #               Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
  #               eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
  #               minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
  #               ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
  #               voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur
  #               sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
  #               mollit anim id est laborum.
  #               EOS
  alias_method :undent_________________________________________________________72, :undent

  def start_with?(*prefixes)
    prefixes.any? do |prefix|
      if prefix.respond_to?(:to_str)
        prefix = prefix.to_str
        self[0, prefix.length] == prefix
      end
    end
  end unless method_defined?(:start_with?)

  # String.chomp, but if result is empty: returns nil instead.
  # Allows `chuzzle || foo` short-circuits.
  def chuzzle
    s = chomp
    s unless s.empty?
  end
end

class NilClass
  def chuzzle; end
end
