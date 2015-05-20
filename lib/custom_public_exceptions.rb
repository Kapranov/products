class CustomPublicExceptions < ActionDispatch::PublicExceptions
  def call(env)
    status = env["PATH_INFO"][1..-1]

    if status == "200"
      Rails.application.routes.call(env)
    else
      super
    end

    if status == "403"
      Rails.application.routes.call(env)
    else
      super
    end

    if status == "404"
      Rails.application.routes.call(env)
    else
      super
    end
  end
end
