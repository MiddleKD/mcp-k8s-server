import redditwarp.SYNC

client = redditwarp.SYNC.Client()

it = client.p.front.pull.hot(5)
it = client.p.subreddit.pull.hot('aiengineering', 5)

l = list(it)
for subm in l:
    try:
        print(type(subm))
        print(f"r/{subm.subreddit.name} | {subm.id36}+ ^{subm.score} | {subm.title!r:.80}, {subm.comment_count} comments, {subm.body}")
    except AttributeError:
        print(f"r/{subm.subreddit.name} | {subm.id36}+ ^{subm.score} | {subm.title!r:.80}, {subm.comment_count} comments")


# import tweepy

# consumer_key = "QCcEoCNaM5tZTq1yz952CM8et"
# consumer_secret = "ZDWTtz0IqzYufegP6Es9CdgYq59SeFAl21eDWcBVYsDN90vwYA"
# Bearer_Token = "AAAAAAAAAAAAAAAAAAAAAEQR2AEAAAAA90ppwgTo%2FsWpObti3OpqRR9eTGI%3DTyOgYIDOkYourZ2vTPInVBbhd7L9HtMQxklVjvgFkH5CieNfDm"
# access_token = "1924750604028805121-fgWnTqrh43dmJFcfvEuGnJsfDEcHEa"
# access_token_secret = "YCo2PBwUgXoFk4rxPLDVmQt0Ot2Tc6YVQRporPZr25eMj"


# client = tweepy.Client(bearer_token=Bearer_Token, consumer_key=consumer_key, consumer_secret=consumer_secret, access_token=access_token, access_token_secret=access_token_secret)

# public_tweets = client.get_tweet(121212)
# print(public_tweets)
# for tweet in public_tweets:
#     print(tweet)