
# Taken from https://github.com/pjcalvo/pjcalvo.github.io/blob/master/samples/web-crawler/script.py
from scrapy.spiders import CrawlSpider, Rule
from scrapy.linkextractors import LinkExtractor
from scrapy.item import Item, Field

class MyItems(Item):
    referer =Field() # where the link is extracted
    response= Field() # url that was requested
    status = Field() # status code received


class MySpider(CrawlSpider):
    name = "test-crawler"
    target_domains = ["127.0.0.1"] # list of domains that will be allowed to be crawled
    start_urls = ["http://127.0.0.1:4000/pcc_2e/"] # list of starting urls for the crawler
    handle_httpstatus_list = [404,410,301,500] # only 200 by default. you can add more status to list

    # Throttle crawl speed to prevent hitting site too hard
    custom_settings = {
        'CONCURRENT_REQUESTS': 2, # only 2 requests at the same time
        'DOWNLOAD_DELAY': 0.5 # delay between requests
    }

    rules = [
        Rule(
            LinkExtractor( allow_domains=target_domains, deny=(''), unique=('Yes')), 
            callback='parse_my_url', # method that will be called for each request
            follow=True),
        # crawl external links but don't follow them
        Rule(
            LinkExtractor( allow=(''),deny=(""),unique=('Yes')),
            callback='parse_my_url',
            follow=False
        )
    ]

    def parse_my_url(self, response):
      report_if = [200, 300, 404,400,500] #list of responses that we want to include on the report, 200 to show something.
      if response.status in report_if: # if the response matches then creates a MyItem
          item = MyItems()
          item['referer'] = response.request.headers.get('Referer', None)
          item['status'] = response.status
          item['response']= response.url
          yield item
      yield None # if the response did not match return empty
