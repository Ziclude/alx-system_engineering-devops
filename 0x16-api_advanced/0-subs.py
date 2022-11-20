#!/usr/bin/python3
"""
Contains number of redddit subscribers function
"""

import requests

def number_of_subscribers(subreddit):
    """returns subscribers number for a specific subreddit"""
    if subreddit is None or not isinstance(subreddit, str):
        return 0
    r = requests.get('http://www.reddit.com/r/{}/about.json'.format(subreddit),
                     headers={'User-Agent': 'Python/requests:APIproject:\
