class ApplicationController < ActionController::API
    before_action :authenticate_request

    SECRET_KEY = Rails.application.secret_key_base. to_s

  def encode_token(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, SECRET_KEY)
  end

  def decode_token(token)
    decode = JWT.decode(token, SECRET_KEY).first
    HashWithIndifferentAccess.new decode
  end

  def authenticate_request
    header = request.headers['Authorization']
    token = header.split.last if header.present?
    begin
      decoded_token = decode_token(token)
      @current_user_id = decoded_token['user_id']
    rescue JWT::DecodeError
      render json: { status: 'ERROR', message: 'Invalid token' }, status: :unauthorized
    end
  end

  def current_user
    @current_user ||= User.find(@current_user_id)
  end
end
