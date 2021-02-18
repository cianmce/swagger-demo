class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :render_404


  def render_404(exception)
    Rails.logger.error("Application Error 404 :: #{exception.class} - #{exception.message} :: #{exception.backtrace}")

    common_error_handler(404, "Not Found", "The page you were looking for couldn't be found.")
  end

  def common_error_handler(code, short_message, long_message)
    @error_message = long_message
    render json: { error: short_message, info: long_message }, status: code
  end
end
