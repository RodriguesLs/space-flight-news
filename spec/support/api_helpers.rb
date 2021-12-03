module ApiHelpers
  def json_page
    ActiveSupport::JSON.decode(response.body)
  end
end
