class ErrorsController < ApplicationController

  def error200
    render status: :ok
  end

  def error403
    render status: :forbidden
  end

  def error404
    render status: :not_found
  end

end
