require 'spec_helper'

describe ProductsController do
  render_views  # cause JBuiler
  context 'with valid token' do
    before(:each) do
      authWithToken
    end

    describe 'GET #show' do
      let(:product) { Product.create(name: 'NewProduct', price: '12') }
      before(:each) { get :show, format: :json, id: product.id }

      it { response.should be_success }

      it { response.header['Content-Type'].should include 'application/json' }

      it 'returns a product' do
        expect(json["name"]).to eq product.name
      end
    end
  end

  context 'without a valid token' do
    before(:each) { clearToken }
    after(:each) { expect(response.status).to eq(401) }

    it 'GET #show is unauthorized' do
      get :show, format: :json, id: 1
    end
  end
end