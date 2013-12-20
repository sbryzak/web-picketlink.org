require 'bootstrap-sass'
require 'wget_wrapper'
require 'js_minifier'
require 'css_minifier'
require 'html_minifier'
require 'file_merger'
require 'less_config'
require 'symlinker'
require 'breadcrumb'
require 'authors_helper'
require 'releases'


Awestruct::Extensions::Pipeline.new do
  # extension Awestruct::Extensions::Posts.new '/news'
  # extension Awestruct::Extensions::Indexifier.new
  # Indexifier *must* come before Atomizer
  # extension Awestruct::Extensions::Atomizer.new :posts, '/feed.atom'
  helper Awestruct::Extensions::Partial
  helper Awestruct::Extensions::Breadcrumb
  helper Awestruct::Extensions::AuthorsHelper
  transformer Awestruct::Extensions::JsMinifier.new
  transformer Awestruct::Extensions::CssMinifier.new
  transformer Awestruct::Extensions::HtmlMinifier.new
  extension Awestruct::Extensions::LessConfig.new
  extension Awestruct::Extensions::Symlinker.new
end
