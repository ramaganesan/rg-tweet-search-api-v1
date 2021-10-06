# rg-tweet-search-api-v1

This API retrieves a list of tweets, hashtags from Twitter Search API Version 1.1

## Summary

- This API retrieves a list of tweets from Twitter Search API Version 1.1
- Retrieve a listing (max 10) tweets that include a keyword in the last n hours
- Retrieve a list of hashtags used in the top 10 most popular tweets on twitter containing a keyword

## API Endpoints

```
  /tweets:
  description: This endpoint retrieves a list of tweets from Twitter Search API Version 1.1
  displayName: Get Tweets on interesting Keyword
  securedBy: [api-security-scheme]
  get:
    is: api-traits
    queryParameters:
      keyword: 
       type: string
       required: true
       description: Search Twitter Search API for tweets that has the Keyword
      hours:
        type: number
        required: true
        description: Only provides tweets since the number of hours passed. 
    responses:
      200:
       {
         "requestId": "81f450c9-2c8e-467d-a6cf-14826ab65fb3",
         "keyword": "mulesoft",
         "tweets": [
          {
            "text": "T @devpost: Calling all creative devs 📞 The #MuleSoftHackathon is waiting for 
             you to create industry-aligned solutions on their #Anypoint…",
            "url": null,
            "screenName": "chdezs"
          },
          {
            "text": "https://t.co/zOG1uLWGSW",
            "url": "https://t.co/zOG1uLWGSW",
            "screenName": "jaycent"
          }
         ]
      }
```

```
   /tweets/hashtags:
  description: This endpoint retrieves a list of unique hashtags from Twitter Search API Version 1.1
  displayName: Get Latest Hashtags
  securedBy: [api-security-scheme]
  get:
    is: api-traits
    queryParameters:
      keyword: 
       type: string
       required: true
       description: Search Twitter Search API for tweets that has the Keyword
    responses:
      200:
        {
         "requestId": "81f450c9-2c8e-467d-a6cf-14826ab65fb3",
          "keyword": "mulesoft",
          "hashtags": [
           "MuleSoftHackathon",
            "Anypoint"
           ]
       }
```



## Usage

```python
curl --location --request GET 'http://localhost:8081/social/api/v1/tweets?keyword=congress&hours=24' \
--header 'X-Client-Id: 3105a076-02d5-4929-b78c-e190d0201601' \
--header 'X-Client-Secret: e294978c-1920-4c23-84e4-c8603cc0a680' \
--header 'X-Correlation-Id: 9a2621cd-14cf-4a93-86e0-9ca0c63afd97'
```


```python
curl --location --request GET 'http://localhost:8081/social/api/v1/tweets/hashtags?keyword=debtceiling' \
--header 'X-Client-Id: 3105a076-02d5-4929-b78c-e190d0201601' \
--header 'X-Client-Secret: e294978c-1920-4c23-84e4-c8603cc0a680' \
--header 'X-Correlation-Id: 73de6e3d-9c30-492c-bae6-2436bbce8ab2'
```


## Development
Development is done using the Mulesoft Anypoint platform. 

## License
[MIT](https://choosealicense.com/licenses/mit/)