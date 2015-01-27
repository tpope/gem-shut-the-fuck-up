# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "gem-shut-the-fuck-up"
  s.version     = "1.0.0"
  s.authors     = ["Tim Pope"]
  s.email       = ["code@tpop"+'e.net']
  s.homepage    = "https://github.com/tpope/gem-shut-the-fuck-up"
  s.summary     = %q{Disable gem post installation messages}
  s.post_install_message = <<-EOF
\e[35;5m
##################################################################
#                                                                #
# \e[0;1mWhen you Gem shut the fuck up, you must shut the fuck up hard!\e[0;5;35m #
#                                                                #
##################################################################
\e[0m
EOF
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency('rake')
end
