module Calameo
  class Accounts
    include Calameo::Base
    api_method :getAccountInfos                   #http://www.calameo.com/documentation/api/api-getaccountinfos.htm
    api_method :fetchAccountSubscriptions         #http://www.calameo.com/documentation/api/api-fetchaccountsubscriptions.htm
    api_method :fetchAccountBooks                 #http://www.calameo.com/documentation/api/api-fetchaccountbooks.htm
    api_method :fetchAccountFavorites             #http://www.calameo.com/documentation/api/api-fetchaccountfavorites.htm
    api_method :fetchAccountSubscribers           #http://www.calameo.com/documentation/api/api-fetchaccountsubscribers.htm
	end
  
  class Subscriptions
    include Calameo::Base
    api_method :getSubscriptionInfos              #http://www.calameo.com/documentation/api/api-getsubscriptioninfos.htm
    api_method :fetchSubscriptionBooks            #http://www.calameo.com/documentation/api/api-fetchsubscriptionbooks.htm
    api_method :fetchSubscriptionSubscribers      #http://www.calameo.com/documentation/api/api-fetchsubscriptionsubscribers.htm
  end
  
  class Publications
    include Calameo::Base
    api_method :getBookInfos                      #http://www.calameo.com/documentation/api/api-getbookinfos.htm
    api_method :activateBook                      #http://www.calameo.com/documentation/api/api-activatebook.htm
    api_method :deactivateBook                    #http://www.calameo.com/documentation/api/api-deactivatebook.htm
    api_method :updateBook, :post                 #http://www.calameo.com/documentation/api/api-updatebook.htm
    api_method :deleteBook                        #http://www.calameo.com/documentation/api/api-deletebook.htm
    api_method :fetchBookComments                 #http://www.calameo.com/documentation/api/api-fetchbookcomments.htm
    api_method :renewBookPrivateUrl               #http://www.calameo.com/documentation/api/api-renewbookprivateurl.htm
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
    api_method :getSubscriberInfos                #http://www.calameo.com/documentation/api/api-getsubscriberinfos.htm 
    api_method :activateSubscriber                #http://www.calameo.com/documentation/api/api-activatesubscriber.htm 
    api_method :deactivateSubscriber              #http://www.calameo.com/documentation/api/api-deactivatesubscriber.htm 
    api_method :addSubscriber, :post              #http://www.calameo.com/documentation/api/api-addsubscriber.htm 
    api_method :updateSubscriber, :post           #http://www.calameo.com/documentation/api/api-updatesubscriber.htm 
    api_method :deleteSubscriber                  #http://www.calameo.com/documentation/api/api-deletesubscriber.htm 
    api_method :fetchSubscriberBooks              #http://www.calameo.com/documentation/api/api-fetchsubscriberbooks.htm 
    api_method :authSubscriberSession             #http://www.calameo.com/documentation/api/api-authsubscribersession.htm 
    api_method :checkSubscriberSession            #http://www.calameo.com/documentation/api/api-checksubscribersession.htm 
    api_method :deleteSubscriberSession           #http://www.calameo.com/documentation/api/api-deletesubscribersession.htm
  end
  
  class SubscriberDRM
    include Calameo::Base
    
    api_method :fetchSubscriberDRMSingles         #http://www.calameo.com/documentation/api/api-fetchsubscriberdrmsingles
    api_method :fetchSubscriberDRMPeriods         #http://www.calameo.com/documentation/api/api-fetchsubscriberdrmperiods
    api_method :fetchSubscriberDRMSeries          #http://www.calameo.com/documentation/api/api-fetchsubscriberdrmseries
    api_method :addSubscriberDRMSingle, :post     #http://www.calameo.com/documentation/api/api-addsubscriberdrmsingle
    api_method :addSubscriberDRMPeriod, :post     #http://www.calameo.com/documentation/api/api-addsubscriberdrmperiod
    api_method :addSubscriberDRMSeries, :post     #http://www.calameo.com/documentation/api/api-addsubscriberdrmserie
    api_method :updateSubscriberDRMPeriod, :post  #http://www.calameo.com/documentation/api/api-updatesubscriberdrmperiod
    api_method :updateSubscriberDRMSeries, :post  #http://www.calameo.com/documentation/api/api-updatesubscriberdrmserie
    api_method :deleteSubscriberDRMSingle         #http://www.calameo.com/documentation/api/api-deletesubscriberdrmsingle
    api_method :deleteSubscriberDRMPeriod         #http://www.calameo.com/documentation/api/api-deletesubscriberdrmperiod
    api_method :deleteSubscriberDRMSeries         #http://www.calameo.com/documentation/api/api-deletesubscriberdrmserie
    api_method :clearSubscriberDRMs               #http://www.calameo.com/documentation/api/api-clearsubscriberdrms
  end
end