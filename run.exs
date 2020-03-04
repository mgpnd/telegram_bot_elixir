token = System.fetch_env!("TELEGRAM_BOT_TOKEN")
chat_id = System.get_env("TELEGRAM_CHAT_ID")

TelegramBot.API.start_link(token)

{:ok, updates} = TelegramBot.API.get_updates

updates
  |> IO.inspect

# {:ok, response} = TelegramBot.API.send_message(chat_id, "123")

# response
#   |> IO.inspect
