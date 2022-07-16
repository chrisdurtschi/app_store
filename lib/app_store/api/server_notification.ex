defmodule AppStore.API.ServerNotification do
  @moduledoc """
  The module for App Store Server Notifications
  """

  alias AppStore.API.{Config, Error, Response, HTTP}

  @path_prefix "/inApps/v1/notifications"

  @doc """
  Ask App Store Server Notifications to send a test notification to your server.

  Official documentation: https://developer.apple.com/documentation/appstoreserverapi/request_a_test_notification
  """
  @spec request_test_notification(Config.t(), String.t()) ::
          {:error, Error.t()} | {:ok, Response.t()}
  def request_test_notification(%Config{} = api_config, token) do
    path = "#{@path_prefix}/test"

    HTTP.post(api_config, token, path)
  end
end
