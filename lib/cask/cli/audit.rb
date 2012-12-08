class Cask::CLI::Audit
  def self.run(*args)
    formula_count = 0
    problem_count = 0
    
    casks_to_audit = args.empty? ? Cask.all : args.map { |arg| Cask.load(arg) }
    casks_to_audit.each do |cask|
      ca = Cask::Auditor.new(cask)
      ca.audit
      
      unless ca.problems.empty?
        puts "#{cask.title}:"
        ca.problems.each { |p| puts " * #{p}" }
        puts
        formula_count += 1
        problem_count += ca.problems.size
      end
    end
    
    unless problem_count.zero?
      ofail "#{problem_count} problems in #{formula_count} casks"
    end
  end

  def self.help
    "verifies installability of casks"
  end
end
