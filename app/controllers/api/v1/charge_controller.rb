class Api::V1::ChargeController < ActionController::API
  def create
    @charge = Charge.new(charge_params)
    @charge.save!
    render json: @charge, status: :created
  end

  private

  def charge_params
    params
      .require(:charge_order)
      .permit('book_id', :price, :discount, :client_id, :final_price)
  end
end
