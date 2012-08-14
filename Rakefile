require 'pathname'

def dotfiles
  Dir.chdir(File.expand_path('..', __FILE__)) do
    Dir.glob('**/*.symlink') do |to|
      from = to.gsub(/dot_/, '.').gsub(/\.symlink$/, '')
      yield(File.join(Dir.home, from), File.join(Dir.pwd, to))
    end
  end
end

desc 'Hook our dotfiles into system-standard positions.'
task :install do
  def relpath (from, to)
    Pathname.new(to).relative_path_from(Pathname.new(from))
  end

  dotfiles do |from, to|
    fromdir = File.dirname(from)
    if (!File.exist?(fromdir))
      puts "Creating #{fromdir}"
      Dir.mkdir(fromdir)
    end
    to = relpath(File.dirname(from), to)
    File.delete(from) if File.symlink?(from)
    if File.exist?(from)
      puts "Not overwriting existing file: #{from}"
    else
      puts "Setting up #{from}"
      File.symlink(to, from)
    end
  end
end

desc 'Remove all symbolically linked dotfiles'
task :uninstall do
  dotfiles do |from, to|
    if !File.symlink?(from)
      puts "Not deleting file: #{from}"
    else
      File.delete(from)
    end
  end
end

task :default => :install
