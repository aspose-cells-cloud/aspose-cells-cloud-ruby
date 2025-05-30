# -*- encoding: utf-8 -*-
#
=begin
#Web API Swagger specification

#No description provided (generated by Swagger CodeGen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger CodeGen version: 2.3.0-SNAPSHOT

=end

$:.push File.expand_path("../lib", __FILE__)
require "aspose_cells_cloud/version"

Gem::Specification.new do |s|
  s.name        = "aspose_cells_cloud"
  s.version     = AsposeCellsCloud::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Aspose Cells Cloud"]
  s.email       = ["aspose.cloud@asposeptyltd.com"]
  s.homepage    = "https://products.aspose.cloud/cells/ruby"
  s.metadata    = { "source_code_uri" => "https://github.com/aspose-cells-cloud/aspose-cells-cloud-ruby" }
  s.summary     = "Ruby Excel SDK Library – Create, Edit, Save, Export, and Convert Spreadsheets (XLSX, ODS, JSON, PDF, Markdown)"
  s.description = "Ruby Cloud SDK wraps Aspose.Cells REST API so you could seamlessly integrate Microsoft Excel® spreadsheet generation, manipulation, conversion & inspection features into your own applications. Aspose.Cells Cloud for Ruby enables you to handle various aspects of Excel files, including cell data, styles, formulas, charts, pivot tables, data validation, comments, drawing objects, images, hyperlinks, and so on. Additionally, it supports operations such as splitting, merging, repairing, and converting to other compatible file formats."
  s.metadata['keywords'] = "excel, spreadsheet, convert, xlsx, pdf, json, cloud, rest api ,merge, split, protect"
  s.license     = "MIT"
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'
  s.add_runtime_dependency 'faraday', '~> 0.17.4'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.1'
  s.add_development_dependency 'webmock', '~> 1.24', '>= 1.24.3'
  s.add_development_dependency 'autotest', '~> 4.4', '>= 4.4.6'
  s.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  s.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.12'

  s.files         = Dir["README.md", "examples/**/*","lib/**/*", "LICENSE"]
  s.executables   = []
  s.require_paths = ["lib"]
end

