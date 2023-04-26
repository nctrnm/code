#Matthew McGilvery + ChatGPT3.5
#04/21/2023
#Spotify Audio Feature Analysis for Independent Musicians

import spotipy
import spotipy.util as util
import pandas as pd

# Prompt the user to input their Spotify API credentials
print("Please go to https://developer.spotify.com/documentation/general/guides/app-settings/#register-your-app to register your app and obtain your client ID and client secret.")
client_id = input("Please enter your Spotify API client ID: ")
client_secret = input("Please enter your Spotify API client secret: ")
redirect_uri = input("Please enter your Spotify API redirect URI: ")
username = input("Please enter your Spotify API username: ")
scope = 'user-read-private user-read-email'
token = util.prompt_for_user_token(username, scope, client_id=client_id, client_secret=client_secret, redirect_uri=redirect_uri)
sp = spotipy.Spotify(auth=token)

# Prompt the user to input the name of the artist
artist_name = input("Please enter the name of the artist: ")

# Search for the artist on Spotify
results = sp.search(q=artist_name, type='artist', limit=1)

# Get the artist's Spotify ID
artist_id = results['artists']['items'][0]['id']

# Get the artist's top tracks on Spotify
top_tracks = sp.artist_top_tracks(artist_id)

# Get the audio features for each of the artist's top tracks on Spotify
features = []
for track in top_tracks['tracks']:
    track_id = track['id']
    audio_features = sp.audio_features(track_id)
    # Add track name to the audio features dictionary
    audio_features[0]['name'] = track['name']
    # Convert duration to minutes
    audio_features[0]['duration_min'] = audio_features[0]['duration_ms'] / 60000
    # Convert key to actual musical key
    key_map = {0: 'C', 1: 'C#', 2: 'D', 3: 'D#', 4: 'E', 5: 'F', 6: 'F#', 7: 'G', 8: 'G#', 9: 'A', 10: 'A#', 11: 'B'}
    audio_features[0]['key_actual'] = key_map[audio_features[0]['key']]
    # Add valence and energy columns
    audio_features[0]['valence'] = audio_features[0]['valence']
    audio_features[0]['energy'] = audio_features[0]['energy']
    features.append(audio_features[0])

# Create a DataFrame to store the audio features for the artist's top tracks on Spotify
spotify_data = pd.DataFrame(features)

# Add track name as a column to the DataFrame
spotify_data['name'] = [track['name'] for track in top_tracks['tracks']]

# Calculate average audio features for all tracks
spotify_data_mean = spotify_data.mean()

# Print the audio features for the artist's top tracks on Spotify
print("Spotify audio features:")
print(spotify_data[['name', 'danceability', 'energy', 'key_actual', 'loudness', 'mode', 'speechiness', 'acousticness', 'instrumentalness', 'liveness', 'valence', 'tempo', 'duration_min']])
print("\n")
print("Spotify audio feature averages:")
print(spotify_data_mean[['danceability', 'energy', 'loudness', 'speechiness', 'acousticness', 'instrumentalness', 'liveness', 'valence']])

