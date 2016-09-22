require File.expand_path("../../config/boot.rb", __FILE__)
require 'sitespec/rspec'

Sitespec.configuration.build_path = 'docs'

describe 'Sitespec' do
  let(:app) do
    SamplePadrinoStaticPages::App
  end

  %w[
    /
  ].each do |path|
    describe "GET #{path}", :sitespec do
      it "returns 200" do
        expect(get(path).status).to eq 200
      end
    end
  end
end
