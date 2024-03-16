webhookInfoBotUrl = ""
messageId = ""

function sendWebhookInfoBot()
    local webhook = Webhook.new(webhookInfoBotUrl)
    webhook.embed1.use = true
    webhook.embed1.title = "INFORMATION BOT"
    webhook.embed1.description = "Ini adalah deskripsi"
    webhook.embed1:addField("Name Bot", getBot().name, true)
    webhook.embed1:addField("Current World", getWorld().name, true)
    webhook.embed1:addField("World List", "WORLD1\nWORLD1", false)
    webhook.embed1.image = "https://lh3.googleusercontent.com/d/1YoQ5PZ9baPFYEbRPpy_iddGaofWfTSyK"
    webhook.embed1.thumbnail = "https://lh3.googleusercontent.com/d/1YoQ5PZ9baPFYEbRPpy_iddGaofWfTSyK"
    webhook.embed1.footer.text = "Script Ini Dibuat Oleh Mayor"
    webhook.embed1.footer.icon_url = "https://lh3.googleusercontent.com/d/1YoQ5PZ9baPFYEbRPpy_iddGaofWfTSyK"
    webhook.embed1.author.name = "Alexander The Great"
    webhook.embed1.author.url = "https://en.wikipedia.org/wiki/Alexander_the_Great"
    webhook.embed1.author.icon_url = "https://lh3.googleusercontent.com/d/1YoQ5PZ9baPFYEbRPpy_iddGaofWfTSyK"
    webhook:send()
    webhook:edit(messageId)
end