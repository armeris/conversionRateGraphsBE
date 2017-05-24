class RatesController < ActionController::API
  def index
    @eur_jpy = Rate.where({:origin => :EUR, :destination => :JPY}).order_by(:date => 'asc')
    @btc_eur = Rate.where({:origin => :BTC, :destination => :EUR}).order_by(:date => 'asc')
    @btc_jpy = Rate.where({:origin => :BTC, :destination => :JPY}).order_by(:date => 'asc')

    render json: {:eur_jpy => @eur_jpy, :btc_eur => @btc_eur, :btc_jpy => @btc_jpy}
  end
end