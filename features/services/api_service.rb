require 'httparty'

class ApiService
  include HTTParty
  base_uri 'https://portal.vr.com.br'

  def self.get_establishment_types
    get('/api-web/comum/enumerations/VRPAT')
  end
end
