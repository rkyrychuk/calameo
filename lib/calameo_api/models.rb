module Calameo
  class Accounts
    include Calameo::Base
    
    # This action allows you to recover the information about an account.
    #
    # @param integer options[:account_id]  ID of the account you wish to recover the information from. If left blank, your account will be used.
    # @return [AccountInfo] 
    # 
    # @see http://www.calameo.com/documentation/api/api-getaccountinfos.htm 
    # Calameo::Accounts.getAccountInfos
    api_method :getAccountInfos, :get, Api::COMMON_API_URL, Items::AccountInfo
    
    # This action allows you to recover the information about an account.
    #
    # @param integer options[:account_id] ID of the account you wish to recover the subscriptions from. If left blank, your account will be used.
    # @param string  options[:order]      String of characters used to define the organization criteria of the subscriptions (see sorting)
    # @param string  options[:way]        String of characters used to define the sort order. Either UP (default) or DOWN.
    # @param integer options[:start]      Start position of the range of subscriptions. Default is 0.
    # @param integer options[:step]       Number of subscriptions to be sent from the start position (max: 50).
    # @return [array] array of subscriptions.
    # 
    # @see http://www.calameo.com/documentation/api/sort-subscriptions.htm 
    # @see http://www.calameo.com/documentation/api/api-fetchaccountsubscriptions.htm
    # Calameo::Accounts.fetchAccountSubscriptions
    api_method :fetchAccountSubscriptions, :get, Api::COMMON_API_URL, Items::Subscriptions
    
    # This action allows you to fetch an account's publications.
    #
    # @param integer options[:account_id] ID of the account you wish to recover the information from. If left blank, your account will be used.
    # @param string  options[:order]      String of characters used to define the organization criteria of the publications (see sorting)
    # @param string  options[:way]        String of characters used to define the sort order. Either UP (default) or DOWN.
    # @param integer options[:start]      Start position of the range of publications. Default is 0.
    # @param integer options[:step]       Number of publications to be sent from the start position (max: 50).
    # @return [array] array of publications.
    # 
    # @see http://www.calameo.com/documentation/api/sort-book.htm 
    # @see http://www.calameo.com/documentation/api/api-fetchaccountbooks.htm
    # Calameo::Accounts.fetchAccountBooks
    api_method :fetchAccountBooks, :get, Api::COMMON_API_URL, Items::Publications
    
    # This action allows you to recover all or part of the favourite publications of your account.
    #
    # @param string  options[:order]      String of characters used to define the organization criteria of the publications (see sorting)
    # @param string  options[:way]        String of characters used to define the sort order. Either UP (default) or DOWN.
    # @param integer options[:start]      Start position of the range of publications. Default is 0.
    # @param integer options[:step]       Number of publications to be sent from the start position (max: 50).
    # @return [array] array of publications.
    # 
    # @see http://www.calameo.com/documentation/api/sort-book.htm 
    # @see http://www.calameo.com/documentation/api/api-fetchaccountfavorites.htm
    # Calameo::Accounts.fetchAccountFavorites
    api_method :fetchAccountFavorites, :get, Api::COMMON_API_URL, Items::Publications
    
    # This action allows you to fetch your account's subscribers.
    #
    # @param string  options[:order]      String of characters used to define the organization criteria of the subscribers (see sorting)
    # @param string  options[:way]        String of characters used to define the sort order. Either UP (default) or DOWN.
    # @param integer options[:start]      Start position of the range of subscribers. Default is 0.
    # @param integer options[:step]       Number of subscribers to be sent from the start position (max: 50).
    # @return [array] array of subscribers.
    # 
    # @see http://www.calameo.com/documentation/api/sort-subscribers.htm
    # @see http://www.calameo.com/documentation/api/api-fetchaccountsubscribers.htm
    # Calameo::Accounts.fetchAccountSubscribers
    api_method :fetchAccountSubscribers, :get, Api::COMMON_API_URL, Items::Subscribers
  end
  
  class Subscriptions
    include Calameo::Base
    
    # This action allows you to recover the information about a subscription.
    #
    # @param integer  options[:subscription_id]      String of characters used to define the organization criteria of the publications (see sorting)
    # @return [Subscription]
    # 
    # @see http://www.calameo.com/documentation/api/api-getsubscriptioninfos.htm
    # Calameo::Subscriptions.getSubscriptionInfos
    api_method :getSubscriptionInfos, :get, Api::COMMON_API_URL, Items::Subscription
    
    # This action allows you to fetch an account's publications.
    #
    # @param integer options[:subscription_id] 	ID of the subscription.
    # @param string  options[:order]      String of characters used to define the organization criteria of the publications (see sorting)
    # @param string  options[:way]        String of characters used to define the sort order. Either UP (default) or DOWN.
    # @param integer options[:start]      Start position of the range of publications. Default is 0.
    # @param integer options[:step]       Number of publications to be sent from the start position (max: 50).
    # @return [array] array of publications.
    # 
    # @see http://www.calameo.com/documentation/api/sort-subscriptions.htm 
    # @see http://www.calameo.com/documentation/api/api-fetchsubscriptionbooks.htm
    # Calameo::Subscriptions.fetchSubscriptionBooks
    api_method :fetchSubscriptionBooks, :get, Api::COMMON_API_URL, Items::Publications
    # This action allows you to fetch an account's publications.
    #
    # @param integer options[:subscription_id] 	ID of the subscription.
    # @param string  options[:order]      String of characters used to define the organization criteria of the subscribers (see sorting)
    # @param string  options[:way]        String of characters used to define the sort order. Either UP (default) or DOWN.
    # @param integer options[:start]      Start position of the range of subscribers. Default is 0.
    # @param integer options[:step]       Number of subscribers to be sent from the start position (max: 50).
    # @return [array] array of subscribers.
    # 
    # @see http://www.calameo.com/documentation/api/sort-subscriptions.htm 
    # @see http://www.calameo.com/documentation/api/api-fetchsubscriptionsubscribers.htm
    # Calameo::Subscriptions.fetchSubscriptionSubscribers
    api_method :fetchSubscriptionSubscribers, :get, Api::COMMON_API_URL, Items::Subscribers
  end
  
  class Publications
    include Calameo::Base
    
    # This action allows you to recover the information about a publication using its unique code.
    #
    # @param string  options[:book_id] 	ID of the publication.
    # @return [Publication]
    # 
    # @see http://www.calameo.com/documentation/api/api-getbookinfos.htm
    # Calameo::Publications.getBookInfos
    api_method :getBookInfos, :get, Api::COMMON_API_URL, Items::Publication
    
    # This action allows you to activate a publication.
    #
    # @param string  options[:book_id] 	ID of the publication.
    # @return [nil]
    # 
    # @see http://www.calameo.com/documentation/api/api-activatebook.htm
    # Calameo::Publications.activateBook
    api_method :activateBook, :get, Api::COMMON_API_URL, nil
    
    # This action allows you to deactivate a publication.
    #
    # @param string  options[:book_id] 	ID of the publication.
    # @return [nil]
    # 
    # @see http://www.calameo.com/documentation/api/api-deactivatebook.htm
    # Calameo::Publications.deactivateBook
    api_method :deactivateBook, :get, Api::COMMON_API_URL, nil
    
    
    # This action allows you to update a publication's properties.
    #
    # @param string  options[:book_id]          ID of the publication.
    # @param string  options[:category]         Category references
    # @param string  options[:format]           Format references
    # @param string  options[:dialect]          Language references
    # @param string  options[:name]             Title of the publication. If not present, the filename will be used.
    # @param string  options[:description]      Description of the publication. If not present, the first page's text will be used.
    # @param date    options[:date]             Date of the publication for DRM management.
    # @param boolean options[:is_published]     Activation status. Either 0 (disabled) or 1 (enabled).
    # @param integer options[:publishing_mode] 	Access to the publication. Either 1 (public) or 2 (private).
    # @param boolean options[:private_url]      Use a private URL. Either 0 (disabled) or 1 (enabled).
    # 
    # @param integer options[:view]             Default view ing mode. Either book, slide, bookindex or slideindex.
    # @param integer options[:subscribe]        Allow subscribers' access. Either 0 (disabled) or 1 (enabled).
    # @param integer options[:comment]          Comments behaviour. Either 0 (disabled), 1 (moderate all), 2 (moderate all except contacts), 3 (accept only contacts) or 4 (accept all).
    # @param integer options[:download]         Download behaviour. Either 0 (disabled), 1 (only contacts) or 2 (everyone).
    # @param integer options[:print]            Print behaviour. Either 0 (disabled), 1 (only contacts) or 2 (everyone).
    # @param integer options[:annotation_view]  Annotation viewing behaviour. Either 0 (disabled), 1 (only contacts) or 2 (everyone).
    # @param integer options[:annotation_add]   Annotation adding behaviour. Either 0 (disabled), 1 (only contacts) or 2 (everyone).
    # @param integer options[:extract]          not yet implemented.
    # @param integer options[:mini]             Allow MiniCalaméo. Either 0 (disabled) or 1 (enabled).
    # @param integer options[:adult]            Restrict access to adults. Either 0 (no) or 1 (yes).
    # @param integer options[:direction]        Reading direction. Either 0 (left-to-right) or 1 (right-to-left "manga mode").
    # 
    # @param string  options[:license]          License. Either <empty> (traditionnal copyright) or pd (public domain), by, by_nc, by_nc_nd, by_nc_sa, by_nd or by_sa (Creative Commons).
    # @param string  options[:skin_url]         Custom skin URL Must be an absolute URL. (see CSML documentation)
    # @param string  options[:logo_url]         Custom logo URL. Must be an absolute URL.
    # @param string  options[:logo_link_url]    Custom logo link URL. Must be an absolute URL.
    # @param string  options[:background_url]   Custom background URL. Must be an absolute URL.
    # @param integer options[:music]            Background music mode. Either 0 (loop forever), 1 (play only once).
    # @param string  options[:music_url]        Custom background music URL. Must be an absolute URL.
    # @param integer options[:sfx]              Play sound effects like page flipping. Either 0 (disabled) or 1 (enabled).
    # @param string  options[:sfx_url]          Custom page flipping sound URL. Must be an absolute URL.
    # 
    # @return [Publication]
    # @see http://www.calameo.com/documentation/skins/index.htm
    # @see http://www.calameo.com/documentation/api/item-categories.htm
    # @see http://www.calameo.com/documentation/api/item-formats.htm
    # @see http://www.calameo.com/documentation/api/item-dialects.htm
    # @see http://www.calameo.com/documentation/api/api-updatebook.htm
    # Calameo::Publications.updateBook
    api_method :updateBook, :post, Api::COMMON_API_URL, Items::Publication
    
    # This action allows you to delete a publication of your subscription using its unique code.
    #
    # @param string  options[:book_id] 	ID of the publication.
    # @return [nil]
    # 
    # @see http://www.calameo.com/documentation/api/api-deletebook.htm
    # Calameo::Publications.deleteBook
    api_method :deleteBook, :get, Api::COMMON_API_URL, nil
    
    # This action allows you to get the comments of a publication.
    #
    # @param string  options[:book_id] 	ID of the publication.
    # @param string  options[:order]      String of characters used to define the organization criteria of the comments. Only Date is available for now
    # @param string  options[:way]        String of characters used to define the sort order. Either UP (default) or DOWN.
    # @param integer options[:start]      Start position of the range of comments. Default is 0.
    # @param integer options[:step]       Number of comments to be sent from the start position (max: 50).
    # @return [array] array of comments
    # 
    # @see http://www.calameo.com/documentation/api/api-fetchbookcomments.htm
    # Calameo::Publications.fetchBookComments
    api_method :fetchBookComments, :get, Api::COMMON_API_URL, Items::Comments
    
    # This action allows you to renew a publication's private URL using its unique code.
    #
    # @param string  options[:book_id] 	ID of the publication.
    # @return [Publication]
    # 
    # @see http://www.calameo.com/documentation/api/api-renewbookprivateurl.htm
    # Calameo::Publications.renewBookPrivateUrl
    api_method :renewBookPrivateUrl, :get, Api::COMMON_API_URL, Items::Publication
  end
  
  class Publishing
    include Calameo::Base
    
    api_method :publish, :post                    #http://www.calameo.com/documentation/api/api-publish.htm
    api_method :publishFromUrl, :post             #http://www.calameo.com/documentation/api/api-publishfromurl.htm
    api_method :publishFromText, :post            #http://www.calameo.com/documentation/api/api-publishfromtext.htm
    api_method :revise                            #http://www.calameo.com/documentation/api/api-revise.htm
    api_method :reviseFromUrl                     #http://www.calameo.com/documentation/api/api-revisefromurl.htm
    api_method :reviseFromText                    #http://www.calameo.com/documentation/api/api-revisefromtext.htm
  end
  
  class Subscribers
    include Calameo::Base
     
    # This action allows you to get a subscriber's data.
    #
    # @param integer  options[:subscription_id] 	ID of the subscription.
    # @param string   options[:login]              Login of the subscriber.
    # @return [Subscriber]
    # 
    # @see http://www.calameo.com/documentation/api/api-getsubscriberinfos.htm 
    # Calameo::Subscribers.getSubscriberInfos
    api_method :getSubscriberInfos, :get, Api::COMMON_API_URL, Items::Subscriber
    
    # This action allows to activate a deactivated subscriber.
    #
    # @param integer  options[:subscription_id] 	ID of the subscription.
    # @param string   options[:login]              Login of the subscriber.
    # @return [nil]
    # 
    # @see http://www.calameo.com/documentation/api/api-activatesubscriber.htm 
    # Calameo::Subscribers.activateSubscriber
    api_method :activateSubscriber, :get, Api::COMMON_API_URL, nil
    
    # This action allows to deactivate an activated subscriber. 
    # Once deactivated, the subscriber can no longer access his publications
    #
    # @param integer  options[:subscription_id] 	ID of the subscription.
    # @param string   options[:login]             Login of the subscriber.
    # @return [nil]
    # 
    # @see http://www.calameo.com/documentation/api/api-deactivatesubscriber.htm 
    # Calameo::Subscribers.deactivateSubscriber
    api_method :deactivateSubscriber, :get, Api::COMMON_API_URL, nil
    
    # This action allows you to add a subscriber.
    #
    # @param integer   options[:subscription_id] 	ID of the subscription.
    # @param string    options[:login]            Login of the subscriber.
    # @param string    options[:password]         Subscriber password (if empty a 8 character password will be generated).
    # @param string    options[:lastname]         Subscriber last name.
    # @param string    options[:firstname]        Subscriber first name.
    # @param string    options[:email]            Subscriber e-mail.
    # @param string    options[:language]         Subscriber language. Either EN (default), FR, ES, DE, IT, PT, JP, CN, KR, RU.
    # @param string    options[:is_active]        Subscriber activation status. Either 0 (inactive) or 1 (active).
    # @param string    options[:extras]           Free field up to 255 characters.
    # @return [Subscriber]
    # 
    # @see http://www.calameo.com/documentation/api/api-addsubscriber.htm 
    # Calameo::Subscribers.addSubscriber
    api_method :addSubscriber, :post, Api::COMMON_API_URL, Items::Subscriber
    
    # This action allows you to add a subscriber.
    #
    # @param integer   options[:subscription_id] 	ID of the subscription.
    # @param string    options[:login]            Login of the subscriber.
    # @param string    options[:new_login]        New subscriber login (must be unique in a subscription).
    # @param string    options[:password]         New subscriber password.
    # @param string    options[:lastname]         Subscriber last name.
    # @param string    options[:firstname]        Subscriber first name.
    # @param string    options[:email]            Subscriber e-mail.
    # @param string    options[:language]         Subscriber language. Either EN (default), FR, ES, DE, IT, PT, JP, CN, KR, RU.
    # @param string    options[:is_active]        Subscriber activation status. Either 0 (inactive) or 1 (active).
    # @param string    options[:extras]           Free field up to 255 characters.
    # @return [Subscriber]
    # 
    # @see http://www.calameo.com/documentation/api/api-updatesubscriber.htm 
    # Calameo::Subscribers.updateSubscriber
    api_method :updateSubscriber, :post, Api::COMMON_API_URL, Items::Subscriber
    
    # This action allows you to delete a subscriber.
    #
    # @param integer  options[:subscription_id] 	ID of the subscription.
    # @param string   options[:login]             Login of the subscriber.
    # @return [nil]
    # 
    # @see http://www.calameo.com/documentation/api/api-deletesubscriber.htm 
    # Calameo::Subscribers.deleteSubscriber
    api_method :deleteSubscriber, :get, Api::COMMON_API_URL, nil
    
    # This action allows you to fetch a subscriber's publications.
    #
    # @param integer  options[:subscription_id] 	ID of the subscription.
    # @param string   options[:login]             Login of the subscriber.
    # @param string   options[:order]             String of characters used to define the organization criteria of the publications (see sorting)
    # @param string   options[:way]               String of characters used to define the sort order. Either UP (default) or DOWN.
    # @param integer  options[:start]             Start position of the range of publications. Default is 0.
    # @param integer  options[:step]              Number of publications to be sent from the start position (max: 50).
    # @return [array] array of publications.
    # 
    # @see http://www.calameo.com/documentation/api/sort-book.htm
    # @see http://www.calameo.com/documentation/api/api-fetchsubscriberbooks.htm 
    # Calameo::Subscribers.fetchSubscriberBooks
    api_method :fetchSubscriberBooks, :get, Api::COMMON_API_URL, Items::Publications
    
    # This action allows you to create a subscriber session to bypass the subscriber login panel when opening a publication.
    #
    # @param integer  options[:subscription_id] 	ID of the subscription.
    # @param string   options[:login]             Login of the subscriber.
    # @return [Session] Subscriber session
    # 
    # @see http://www.calameo.com/documentation/api/api-authsubscribersession.htm 
    # Calameo::Subscribers.authSubscriberSession
    api_method :authSubscriberSession, :get, Api::COMMON_API_URL, Items::Session
    
    # This action allows you check the validity of a subscriber session.
    #
    # @param integer  options[:session_id]    ID of the session.
    # @return [Session] Subscriber session
    # 
    # @see http://www.calameo.com/documentation/api/api-checksubscribersession.htm 
    # Calameo::Subscribers.checkSubscriberSession
    api_method :checkSubscriberSession, :get, Api::COMMON_API_URL, Items::Session
    
    # This action allows you to delete a subscriber session
    #
    # @param integer  options[:session_id]    ID of the session.
    # @return [nil]
    # 
    # @see http://www.calameo.com/documentation/api/api-deletesubscribersession.htm
    # Calameo::Subscribers.deleteSubscriberSession
    api_method :deleteSubscriberSession, :get, Api::COMMON_API_URL, nil
  end
  
  class SubscriberDRM
#    include Calameo::Base
#    
#    api_method :fetchSubscriberDRMSingles         #http://www.calameo.com/documentation/api/api-fetchsubscriberdrmsingles
#    api_method :fetchSubscriberDRMPeriods         #http://www.calameo.com/documentation/api/api-fetchsubscriberdrmperiods
#    api_method :fetchSubscriberDRMSeries          #http://www.calameo.com/documentation/api/api-fetchsubscriberdrmseries
#    api_method :addSubscriberDRMSingle, :post     #http://www.calameo.com/documentation/api/api-addsubscriberdrmsingle
#    api_method :addSubscriberDRMPeriod, :post     #http://www.calameo.com/documentation/api/api-addsubscriberdrmperiod
#    api_method :addSubscriberDRMSeries, :post     #http://www.calameo.com/documentation/api/api-addsubscriberdrmserie
#    api_method :updateSubscriberDRMPeriod, :post  #http://www.calameo.com/documentation/api/api-updatesubscriberdrmperiod
#    api_method :updateSubscriberDRMSeries, :post  #http://www.calameo.com/documentation/api/api-updatesubscriberdrmserie
#    api_method :deleteSubscriberDRMSingle         #http://www.calameo.com/documentation/api/api-deletesubscriberdrmsingle
#    api_method :deleteSubscriberDRMPeriod         #http://www.calameo.com/documentation/api/api-deletesubscriberdrmperiod
#    api_method :deleteSubscriberDRMSeries         #http://www.calameo.com/documentation/api/api-deletesubscriberdrmserie
#    api_method :clearSubscriberDRMs               #http://www.calameo.com/documentation/api/api-clearsubscriberdrms
  end
end

