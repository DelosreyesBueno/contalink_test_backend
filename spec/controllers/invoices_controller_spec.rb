require 'rails_helper'

RSpec.describe InvoicesController, type: :controller do
  describe "GET #index" do
    it "returns a successful response" do
      get :index, format: :json
      expect(response).to be_successful
    end

    it "returns JSON format" do
      get :index, format: :json
      expect(response.content_type).to eq "application/json"
    end
  end

  describe "GET #invoices_by_date" do
    let(:start_date) { Date.today }
    let(:end_date) { Date.tomorrow }

    it "returns a successful response" do
      get :invoices_by_date, params: { start_date: start_date, end_date: end_date }
      expect(response).to be_successful
    end

    it "returns JSON format" do
      get :invoices_by_date, params: { start_date: start_date, end_date: end_date }
      expect(response.content_type).to eq "application/json"
    end
  end
end