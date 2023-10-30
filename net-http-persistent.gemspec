# -*- encoding: utf-8 -*-

require_relative 'lib/net/http/persistent/version'

Gem::Specification.new do |s|
  s.name = "net-http-persistent".freeze
  s.version = Net::HTTP::Persistent::VERSION

  s.metadata = { "homepage_uri" => "https://github.com/drbrain/net-http-persistent" }
  s.require_paths = ["lib".freeze]
  s.authors = ["Eric Hodel".freeze]
  s.description = "Manages persistent connections using Net::HTTP including a thread pool for\nconnecting to multiple hosts.\n\nUsing persistent HTTP connections can dramatically increase the speed of HTTP.\nCreating a new HTTP connection for every request involves an extra TCP\nround-trip and causes TCP congestion avoidance negotiation to start over.\n\nNet::HTTP supports persistent connections with some API methods but does not\nmake setting up a single persistent connection or managing multiple\nconnections easy.  Net::HTTP::Persistent wraps Net::HTTP and allows you to\nfocus on how to make HTTP requests.".freeze
  s.email = ["drbrain@segment7.net".freeze]
  s.extra_rdoc_files = ["History.txt".freeze, "Manifest.txt".freeze, "README.rdoc".freeze]
  s.files = Dir[".autotest", ".gemtest", "Gemfile", "History.txt", "README.rdoc", "Rakefile", "{lib,test}/**/*"]
  s.homepage = "https://github.com/drbrain/net-http-persistent".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--main".freeze, "README.rdoc".freeze]
  s.required_ruby_version = ">= 2.4".freeze
  s.summary = "Manages persistent connections using Net::HTTP including a thread pool for connecting to multiple hosts".freeze

  s.add_runtime_dependency(%q<connection_pool>.freeze, ["~> 2.2"])
end

