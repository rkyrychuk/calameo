module Calameo
  module Items
    class ResponseObject
      def self.create(hash)
        result = self.new
        hash.each { |k, v| result.send("#{k}=", v) }
        result
      end
    end
    
    class ResponseCollectionObject < ResponseObject
      def self.create(hash)
        item_type = self.to_s.singularize.constantize
        result = self.new
        result.total = hash["total"]
        result.start = hash["start"]
        result.step = hash["step"]
        result.items = hash["items"].map {|item| item_type.create(item) }
        result
      end
      attr_accessor :total
      attr_accessor :start
      attr_accessor :step
      attr_accessor :items
    end
    
    # Account Info
    class AccountInfo < ResponseObject
      #integer 	Account’s ID
      attr_accessor :id   
      #string 	Account’s name.
      attr_accessor :name
      #string 	Type of account (FREE, PREMIUM or PLATINUM).
      attr_accessor :type
      #string 	Town/city of the account.
      attr_accessor :city
      #string 	Country of the account, using the official two-letter code format
      attr_accessor :country 	
      #string 	Name of the website.
      attr_accessor :website_name 	
      #string 	Address of the website.
      attr_accessor :website_url
      #string 	Public URL of the account.
      attr_accessor :public_url
    end
    # Subscription informations
    # @see http://www.calameo.com/documentation/api/item-subscription.htm
    class Subscription < ResponseObject
      # integer 	Unique identifying key for the subscription.
      attr_accessor :id
      # integer 	Unique identifying key for the subscription's account.
      attr_accessor :account_id
      # string 	Title of the subscription.
      attr_accessor :name
      # string 	Description of the subscription.
      attr_accessor :description
      # integer 	Available publications inside the subscription
      attr_accessor :books
      # integer 	Available subscribers inside the subscription (only returned for your account#'s subscription).
      attr_accessor :subscribers
      # datetime 	Date of creation of the subscription
      attr_accessor :creation
      # datetime 	Date of the last modification of the subscription.
      attr_accessor :modification
      # string 	Absolute URL for the subscription’s overview.
      attr_accessor :public_url
    end
    # Publication informations
    # @see http://www.calameo.com/documentation/api/item-book.htm
    class Publication < ResponseObject
      # string 	ID of the publication.
      attr_accessor :code
      # string 	Title of the publication.
      attr_accessor :name
      # string 	Description of the publication.
      attr_accessor :description
      # string 	Category reference. 
      # @see http://www.calameo.com/documentation/api/item-categories.htm
      attr_accessor :category
      # string 	Format reference.
      # @see http://www.calameo.com/documentation/api/item-formats.htm
      attr_accessor :format
      # string 	Language reference.
      # @see http://www.calameo.com/documentation/api/item-dialects.htm
      attr_accessor :dialect
      # string 	Conversion status of the publication. Either QUEUE (waiting to be converted), PROCESS (processing document), STORE (converting document), ERROR (error during convertion) or DONE (publication ready).
      attr_accessor :status
      # integer 	Sends 1 if the publication is private and 0 if not.
      attr_accessor :is_private
      # string 	Authentication parameter for private URLs (authid).
      attr_accessor :auth_id
      # integer 	Sends 1 if the publication allows access to the miniCalaméo and 0 if not.
      attr_accessor :allow_mini
      # integer 	Number of pages of the publication.
      attr_accessor :pages
      # integer 	Width of a page of the publication.
      attr_accessor :width
      # integer 	Height of a page of the publication.
      attr_accessor :height
      # date 	Date of citation of the publication.
      attr_accessor :date
      # datetime 	Date of creation of the publication
      attr_accessor :creation
      # datetime 	Date of the last modification of the publication.
      attr_accessor :modification
      # string 	Absolute URL for the publication’s cover
      attr_accessor :picture_url
      # string 	Absolute URL for the publication’s thumbnail.
      attr_accessor :thumb_url
      # string 	Absolute URL for the publication’s overview.
      attr_accessor :public_url
      # string 	Absolute URL for the publication’s reading page.
      attr_accessor :view_url
      # string 	Absolute URL for the publication’s comments.
      attr_accessor :comments_url
    end
    #Subscriber informations
    #@see http://www.calameo.com/documentation/api/item-subscriber.htm
    class Subscriber < ResponseObject
      # integer 	Subscriber's owner account ID (should be your account ID).
      attr_accessor :account_id
      # SubscriptionID 	integer 	Subscriber#'s subscription ID.
      attr_accessor :subscription_id
      # string 	Last name of the subscriber.
      attr_accessor :last_name
      # string 	First name of the subscriber.
      attr_accessor :first_name
      # string 	Email address of the subscriber.
      attr_accessor :email
      # string 	Login of the subscriber.
      attr_accessor :login
      # string 	Password of the subscriber.
      attr_accessor :password
      # boolean 	Activation status of the subscriber. Either 1 (activated), 0 (deactivated).
      attr_accessor :is_active
      # datetime 	Date of the subscriber's last login.
      attr_accessor :last_login
      # datetime 	Date the subscriber was created.
      attr_accessor :creation
      # datetime 	Date the subscriber was last edited.
      attr_accessor :modification
      # string 	Additional information on the subscriber, in varchar format up to 255 characters in size
      attr_accessor :extras
    end
    
    # Comment information
    # @see http://www.calameo.com/documentation/api/api-fetchbookcomments.htm
    class Comment < ResponseObject
      # integer 	ID of the comment poster.
      attr_accessor :poster_id
      # string 	Name of the comment poster.
      attr_accessor :poster_name
      # string 	Absolute URL for the comment poster’s page.
      attr_accessor :poster_public_url
      # string 	Absolute URL for the comment poster’s thumbnail.
      attr_accessor :poster_thumb_url
      # date 	Date of the comment.
      attr_accessor :date
      # string 	Text of the comment.
      attr_accessor :text
    end
    # Subscriber session informations
    # @see www.calameo.com/documentation/api/item-subscriber-session.htm
    class Session < ResponseObject
      # string 	Unique session key.
      attr_accessor :id
      # integer 	Unique identifying key of the subscriber subscription.
      attr_accessor :subscription_id 	
      # string 	Login of the subscriber.
      attr_accessor :subscriber_login
    end
    
    class Publications < ResponseCollectionObject
    end
    
    class Subscriptions < ResponseCollectionObject
    end
    class Subscribers < ResponseCollectionObject
    end
    class Comments < ResponseCollectionObject
    end
  end
end