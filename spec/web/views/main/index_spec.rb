require 'spec_helper'
require_relative '../../../../apps/web/views/main/index'

describe Web::Views::Main::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/main/index.html.erb') }
  let(:view)      { Web::Views::Main::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
