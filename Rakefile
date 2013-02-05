require 'pathname'

BASEDIR = Pathname.new(__FILE__).dirname
HOMEDIR = Pathname.new(Dir.home)

def dotfiles (basedir = BASEDIR, subdir = '', &block)
  basedir = Pathname.new(basedir) unless basedir.is_a?(Pathname)
  subdir = Pathname.new(subdir) unless subdir.is_a?(Pathname)
  Pathname.glob(basedir + subdir + '{.*,*}') do |file|
    next if ['.', '..', '.git', '.DS_Store', 'Rakefile'].include?(file.basename.to_s)
    relfile = file.relative_path_from(basedir)
    if file.directory? && !(file + '.symlink').exist?
      dotfiles(basedir, relfile, &block)
    else
      yield(HOMEDIR + relfile, basedir + relfile)
    end
  end
end

desc 'Hook our dotfiles into system-standard positions.'
task :install do
  dotfiles do |target, source|
    if !target.dirname.exist?
      puts "Creating #{target.dirname}"
      target.dirname.mkpath
    end
    target.delete if target.symlink?
    if target.exist?
      puts "NOT overwriting existing file: #{target}"
    else
      puts "Setting up #{target}"
      target.make_symlink(source.relative_path_from(target.dirname))
    end
  end
end

desc 'Remove all symbolically linked dotfiles'
task :uninstall do
  dotfiles do |target, source|
    next unless target.exist?
    if !target.symlink?
      puts "NOT removing file: #{target}"
    else
      puts "Removing #{target}"
      target.delete
    end
  end
end

task :default => :install
