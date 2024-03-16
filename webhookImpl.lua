webhookUrl = "https://discord.com/api/webhooks/1212757065026768927/Bqr9gVNF60NrJs3UHqve97vgAcXdHCRynsBlwx7vgleHekS2g1pCj8hBdFkmFJGzrkH6"
messageId = "1212757212804419595"

function sendWebhook()
    local webhook = Webhook.new(webhookUrl)
    webhook.content = "INI ADALAH KONTEN YANG SUDAH DI EDIT"
    webhook.embed1.use = true
    webhook.embed1.title = "Mayor Webhook"
    webhook.embed1.url = "https://en.wikipedia.org/wiki/Alexander_the_Great"
    webhook.embed1.color = 52479
    webhook.embed1:addField("Nama", "Mayor", true)
    webhook.embed1:addField("Social Media", "Youtube, instagra,", true)

    webhook.embed1.author.name = "Mayor"
    webhook.embed1.author.url = "https://en.wikipedia.org/wiki/Alexander_the_Great"
    webhook.embed1.author.icon_url = "https://lh3.googleusercontent.com/d/1YoQ5PZ9baPFYEbRPpy_iddGaofWfTSyK"

    webhook.embed1.footer.text = "Ini adalah text footer"
    webhook.embed1.footer.icon_url = "https://lh3.googleusercontent.com/d/1YoQ5PZ9baPFYEbRPpy_iddGaofWfTSyK"

    webhook.embed1.image = "https://lh3.googleusercontent.com/d/1YoQ5PZ9baPFYEbRPpy_iddGaofWfTSyK"
    webhook.embed1.thumbnail = "https://lh3.googleusercontent.com/d/1YoQ5PZ9baPFYEbRPpy_iddGaofWfTSyK"
    -- webhook:send()
    webhook:edit(messageId)
end

sendWebhook()