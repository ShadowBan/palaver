defmodule Palaver.Dynamo do
  use Dynamo

  config :dynamo,
    # The environment this Dynamo runs on
    env: Mix.env,

    # The OTP application associated with this Dynamo
    otp_app: :palaver,

    # The endpoint to dispatch requests to
    endpoint: ApplicationRouter,

    # The route from which static assets are served
    # You can turn off static assets by setting it to false
    static_route: "/static"

  # Uncomment the lines below to enable the cookie session store
  # config :dynamo,
  #   session_store: Session.CookieStore,
  #   session_options:
  #     [ key: "_palaver_session",
  #       secret: "eM3Nj184ms4oi9SzQnWPMsmPC4YSh6F3ehRo6Vt0GVjGX46caXiaRJv9ZGowNJDn"]

  # Default functionality available in templates
  templates do
    use Dynamo.Helpers
  end
end
