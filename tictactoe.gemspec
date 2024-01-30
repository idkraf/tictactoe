# coding: utf-8
require_relative "lib/tictactoe/version"

Gem::Specification.new do |spec|
  spec.name          = "tictactoe"
  spec.version       = TicTacToe::VERSION
  spec.authors       = ["Gorie"]
  spec.email         = ["mohbaswandegorie@gmail.com"]
  spec.summary       = %q{Ruby Tic Tac Toe, done tests first and with OOD}
  spec.description   = %q{This is a ruby library built for running the internals of a Tic Tac Toe game.}
  spec.homepage      = "https://github.com/idkraf/tictactoe"
  spec.license       = "Unlicense" # https://choosealicense.com/no-permission/
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  #spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard-rspec"

end
