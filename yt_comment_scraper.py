from dotenv import load_dotenv
from googleapiclient.discovery import build
import csv, os, time, re

START_TIME = time.time()

load_dotenv()
YOUTUBE = build('youtube', 'v3', developerKey=os.getenv('API_KEY'))
comments = []

def process_replies(response_items):
    for response in response_items:
        comment = {}
        comment['id'] = response['id']
        comment['comment'] = response['snippet']['textOriginal']
        comments.append(comment)

def process_comments(response_items):
    global comments
    for response in response_items:
        # top level comment
        comment = {}
        comment['id'] = response['snippet']['topLevelComment']['id']
        comment['comment'] = response['snippet']['topLevelComment']['snippet']['textOriginal']
        comments.append(comment)
        # check for replies
        if 'replies' in response.keys():
            parent_id = response['snippet']['topLevelComment']['id']
            request = YOUTUBE.comments().list(
                part='snippet',
                parentId=parent_id,
                maxResults=100
            )
            response = request.execute()
            process_replies(response['items'])

            # get the rest of the replies (for >100 replies)
            while response.get('nextPageToken', None):
                request = YOUTUBE.comments().list(
                    part='snippet',
                    parentId=parent_id,
                    maxResults=100,
                    pageToken=response['nextPageToken']
                )
                response = request.execute()
                process_replies(response['items'])

def comment_threads(id):
    global comments
    # get video name
    request = YOUTUBE.videos().list(part='snippet', id=id)
    response = request.execute()
    video_name = response['items'][0]['snippet']['title']
    video_name = re.sub('[\/:*?"<>|]', '', video_name)
    print(f'Fetching comments from "{video_name}"')
    
    # get comments
    request = YOUTUBE.commentThreads().list(
        part='snippet,replies',
        videoId=id,
        maxResults=100
    )
    response = request.execute()
    process_comments(response['items'])

    # get the rest of the comments
    while response.get('nextPageToken', None):
        request = YOUTUBE.commentThreads().list(
            part='snippet,replies',
            videoId=id,
            maxResults=100,
            pageToken=response['nextPageToken']
        )
        response = request.execute()
        process_comments(response['items'])

    # save to csv
    filename = f'{id}_{len(comments)}.csv'
    with open(f'datasets/YT API/{filename}', 'w', encoding='utf8', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=comments[0].keys())
        writer.writeheader()
        writer.writerows(comments)

    print(f'Done. {len(comments)} comments fetched.')
    print(f'Time took: {round(time.time() - START_TIME, 2)} seconds.')
    print(f'Filename: {filename}')

if __name__ == '__main__':
    VIDEO_ID = 'Jt7hE12n11s'

    comment_threads(VIDEO_ID)