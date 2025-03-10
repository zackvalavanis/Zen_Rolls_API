class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session, if: -> { request.format.json? }

  def current_user
    auth_headers = request.headers["Authorization"]
    if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
      token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
      begin
        decoded_token = JWT.decode(
          token,
          Rails.application.credentials.fetch(:secret_key_base),
          true,
          { algorithm: "HS256" }
        )
        User.find_by(id: decoded_token[0]["user_id"])
      rescue JWT::ExpiredSignature
        nil
      end
    end
  end
  
  def authenticate_user
    auth_header = request.headers['Authorization']
    Rails.logger.info "Authorization Header: #{auth_header.inspect}"

    if auth_header
      token = auth_header.split(' ').last
      begin
        decoded_token = JWT.decode(token, Rails.application.credentials.fetch(:secret_key_base), true, algorithm: "HS256")
        Rails.logger.info "Decoded Token: #{decoded_token.inspect}"
        
        @current_user = User.find_by(id: decoded_token[0]["user_id"])
        Rails.logger.info "Current User: #{@current_user.inspect}"
      rescue JWT::DecodeError => e
        Rails.logger.error "JWT Decode Error: #{e.message}"
        @current_user = nil
      end
    end
  end
  
end

