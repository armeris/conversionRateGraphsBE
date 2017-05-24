class Rate
  include Mongoid::Document
  store_in collection: "conversionRates"
  field :btc_jpy, type: Float
  field :btc_eur, type: Float
  field :eur_jpy, type: Float
  field :date, type: Date
end