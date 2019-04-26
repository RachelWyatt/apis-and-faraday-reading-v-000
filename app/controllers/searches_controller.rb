class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = 1TDLLV1ZWF5U0JNJFSMMVHOH0TMBPBKTU32MECQD4I1G3N0R
      req.params['client_secret'] = 4M3GLVQQ4MXIAZDLX0XOLPALUMONDILOMD25J3ZHSMKX4N2H
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
