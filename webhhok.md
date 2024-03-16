## Embed
The Embed class represents an embed object that can be used to display rich content in a Discord message. It has the following properties and methods:

#### Properties
- `use` : Boolean value indicating whether the embed should be used or not.
- `color` : Integer value representing the color of the embed.
- `title` : String value representing the title of the embed.
- `type` : String value representing the type of the embed.
- `description` : String value representing the description of the embed.
- `url` : String value representing the URL associated with the embed.
- `thumbnail` : String value representing the URL of the thumbnail image
- `image` : The image url of the embed.
- `footer` : Object representing the footer of the embed. It has the following properties:
  - `text` : String value representing the text of the footer.
  - `icon_url` : String value representing the URL of the icon associated with the footer.
- `author` : Object representing the author of the embed. It has the following properties:
  - `name` : String value representing the name of the author.
  - `url` : String value representing the URL associated with the author.
  - `icon_url` : String value representing the URL of the icon associated with the author.
## Methods
- `addField(name: string, value: string, inline: boolean)` : Adds a new field to the embed. It takes three arguments:
  - `name` : String value representing the name of the field.
  - `value` : String value representing the value of the field.
  - `is_inline` : Boolean value indicating whether the field should be displayed inline or not.

## Webhook class
A discord webhook class where you can send webhooks.

#### Properties
- `url` : string : string variable representing the webhook url.
- `content` : string : string variable representing the content of the message to be sent.
- `username` : string : string variable representing the username of the webhook.
- `avatar_url` : string : string variable representing the avatar url of the webhook.
- `embed1` : variable representing the first embed of the webhook message.
- `embed2` : variable representing the second embed of the webhook message.

#### Methods
- `makeContent() -> string` : Function that returns the combined content of the message and its embeds. (Json format)
- `send()` : Function that sends the webhook message.
- `edit(message_id: number)`  : Function that edits the webhook message with message_id.