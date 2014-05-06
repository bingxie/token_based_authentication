module AuthHelpers
  def authWithToken
    request.headers['Authorization'] = 'Token token=ABC'
  end

  def clearToken
    request.headers['Authorization'] = nil
  end
end