require 'rails_helper'

RSpec.describe "Leaders", type: :request do
  describe "GET /leaders" do
    it "works! (now write some real specs)" do
      get leaders_path
      expect(response).to have_http_status(200)
    end
  end
end
