class MailingList

  def initialize
    @sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
  end

  def contact_list
    response = call_recipients.get().body
    recipients = to_recipients(response)
    recipients.map{ |recipient| recipient[:email] }
  end

  def contact_exists?(email)
    recipients = search(email: email)
    recipients.any?{ |recipient| recipient[:email] == email }
  end

  def add_contact(email)
    return false if contact_exists?(email)
    response = post(email: email)
    response[:error_count].zero?
  end

  def remove_contact(email)
    return false unless contact_exists?(email)
    recipients = search(email: email)
    contact_id = recipients.first[:id]
    call_recipients._(contact_id).delete()
    !contact_exists?(email)
  end

  private

    def search(params)
      response = call_recipients.search.get(query_params: params).body
      to_recipients(response)
    end

    def post(params)
      response = call_recipients.post(request_body: params).body
      JSON.parse(response, symbolize_names: true)
    end

    def to_recipients(body)
      values = JSON.parse(body, symbolize_names: true)
      values[:recipients] if values.keys.include?(:recipients)
    end

    def call_recipients
      @sg.client.contactdb.recipients
    end
end
