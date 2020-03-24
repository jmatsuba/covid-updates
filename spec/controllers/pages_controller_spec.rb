# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PagesController, type: :request do
  describe '#home' do
    subject { get '/' }

    it 'responds with a 200 level response code' do
      subject

      expect(response.status).to eq(200)
    end
  end

  describe '#resources' do
    subject { get '/resources' }

    it 'responds with a 200 level response code' do
      subject

      expect(response.status).to eq(200)
    end
  end
end
