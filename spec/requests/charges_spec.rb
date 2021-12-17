require 'rails_helper'

describe  'Charge Api' do
  context 'POST' do
    it 'create charge successfully' do
      charge_attributes = attributes_for(:charge, price: 10.0, discount: 2.0)
      result = charge_attributes[:price] * (1 - (charge_attributes[:discount].to_f / 100))

      post '/api/v1/charge', params: { charge_order: charge_attributes }

      parsed_body = JSON.parse(response.body)
      expect(response.status).to eq(201)
      expect(response.content_type).to include('application/json')
      expect(Charge.count).to eq(1)
      expect(parsed_body['price']).to eq('10.0')
      expect(parsed_body['final_price']).to eq(result.to_s)
    end
    xit 'charge order parameters cannot be blank' do
      charge_attributes = attributes_for(:charge, price: 10.0, discount: 2.0)
      result = charge_attributes[:price] * (1 - (charge_attributes[:discount].to_f / 100))

      post '/api/v1/charge', params: { charge_order: charge_attributes }

      parsed_body = JSON.parse(response.body)
      expect(response.status).to eq(201)
      expect(response.content_type).to include('application/json')
      expect(Charge.count).to eq(1)
      expect(parsed_body['price']).to eq('10.0')
      expect(parsed_body['final_price']).to eq(result.to_s)
    end
  end
end
