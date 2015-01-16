#! /your/favourite/path/to/gem
# -*- mode: ruby; coding: utf-8; indent-tabs-mode: nil; ruby-indent-level 2 -*-

# Copyright (c) 2015 Urabe, Shyouhei
#
# Permission is hereby granted, free of  charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction,  including without limitation the rights
# to use,  copy, modify,  merge, publish,  distribute, sublicense,  and/or sell
# copies  of the  Software,  and to  permit  persons to  whom  the Software  is
# furnished to do so, subject to the following conditions:
#
#         The above copyright notice and this permission notice shall be
#         included in all copies or substantial portions of the Software.
#
# THE SOFTWARE  IS PROVIDED "AS IS",  WITHOUT WARRANTY OF ANY  KIND, EXPRESS OR
# IMPLIED,  INCLUDING BUT  NOT LIMITED  TO THE  WARRANTIES OF  MERCHANTABILITY,
# FITNESS FOR A  PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO  EVENT SHALL THE
# AUTHORS  OR COPYRIGHT  HOLDERS  BE LIABLE  FOR ANY  CLAIM,  DAMAGES OR  OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

Gem::Specification.new do |spec|
  spec.name          = "javascriptre"
  spec.version       = 1.0
  spec.authors       = ["Urabe, Shyouhei"]
  spec.email         = ["shyouhei@ruby-lang.org"]
  spec.summary       = 'ECMAScript RegExp parser'
  spec.description   = <<-end.gsub(/[\s]+/m, ' ').strip
                       Believe  it  or  not  this is  a  ECMA-262  edition  5.1
                       -compatible  Regular  Expression parser  and  evaluator,
                       written in Ruby.
                       end
  spec.homepage      = "https://github.com/shyouhei/javascriptre"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0") + %w'lib/javascriptre.rb'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w"lib"

  spec.required_ruby_version                 = '>= 1.8'
  spec.add_development_dependency 'bundler',   '~> 1.5'
  spec.add_development_dependency 'rake',      '~> 10.3'
  spec.add_development_dependency 'racc',      '~> 1.4.11'
  spec.add_development_dependency 'test-unit', '~> 3.0'
  spec.add_development_dependency 'pry',       '~> 0.10'
end
